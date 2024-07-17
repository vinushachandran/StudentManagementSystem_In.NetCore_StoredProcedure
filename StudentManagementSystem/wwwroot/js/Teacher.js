currentPage = 1;
pageSize = 5;
totalPage = 0;

$(document).ready(function () {
    loadData(currentPage, pageSize);

    //Auto filter
    $("#searchQuery").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "/Teacher/SearchAutoComplete",
                type: "GET",
                data: {
                    query: request.term,
                    criteria: $("#searchCriteria").val()
                },
                success: function (data) {
                    response(data);
                }
            });
        },
        select: function (event, ui) {
            $("#searchQuery").val(ui.item.label);
            loadData(1, $("#pageSize").val()); 
            return false;
        }
    });

    $('#addNew').click(function () {
        $('#teacherDetails').hide(); 
        $('#hidable_details').hide();
        $('#heading').hide();
        $('#nlogTable').hide();

        $.ajax({
            url: '/Teacher/UpsertTeacher', 
            type: 'GET',
            success: function (response) {
                $('#addTeacherForm').html(response);
                $.validator.unobtrusive.parse($('#addTeacherForm'));
                $('#addTeacherForm').show();
            }
        });
    });


    //Filter base on active state
    $('#filterCriteria').change(function () {
        loadData(currentPage, pageSize);

    });

    $('#pageSize').change(function () {
        pageSize = parseInt($(this).val());
        loadData(currentPage, pageSize);
        loadNlogLoist();
    });

    $('#teacherDetails th').click(function () {
        var column = $(this).index();
        sortTable(column);
    });

    //Search on change
    $('#searchQuery').on('input', function () {
        loadData(currentPage, pageSize);
       
    });

    $(document).on('click', '#closeTeacherDetailsPopup', function () {
        $('#teacherDetailsPopup').removeClass('show');
    });

    $('#downloadExcelButton').click(function () {
        downloadExcel();
    });

    $(document).ready(function () {
        // Initialize tooltips
        $('[data-toggle="tooltip"]').tooltip();
    });


});

function nextData() {
    totalPage = getTotalPage;
    if (currentPage == totalPage) {
        $('#nextButton').addClass('disabled');
    }
    if (currentPage < totalPage) {
        currentPage++;
        loadData(currentPage, pageSize);
        
        if (currentPage === totalPage) {
            $('#nextButton').addClass('disabled');
        }

    }

}



function previousData() {
    if (currentPage > 1) {
        currentPage--;
        $('#nextButton').removeClass('disabled');
        loadData(currentPage, pageSize);
       
    }
}

async function loadData(pageNumber, pageSize) {
    var data;

    function formatDate(dateString) {
        if (!dateString) return '';

        var timestamp = parseInt(dateString.replace("/Date(", "").replace(")/", ""));
        var date = new Date(timestamp);
        var formattedDate = date.getFullYear() + '-' + (date.getMonth() + 1).toString().padStart(2, '0') + '-' + date.getDate().toString().padStart(2, '0');
        return formattedDate;
    }

    var filterCriteria = $('#filterCriteria').val();

    try {
        var query = $('#searchQuery').val();

        if (query.trim() !== '') {
            var searchform = $('#searchForm');
            var formData = searchform.serialize();

            data = await $.ajax({
                url: '/Teacher/SearchTeacher', // Adjust URL for teacher search endpoint
                type: 'GET',
                data: formData,
                success: function (data) {
                    if (!data.success) {
                        $('#teachersList').html(data); // Adjust ID for teacher list container
                    } else {
                        Swal.fire({ icon: 'error', text: data.message });
                    }
                }
            });
        } else {
            var form = $('#paginationForm');
            var formData = form.serialize();

            formData += '&PageNumber=' + currentPage; // Adjust variable name if needed

            data = await $.ajax({
                url: '/Teacher/DisplayAllTeachers', // Adjust URL for teacher display endpoint
                type: 'GET',
                data: formData,
                success: function (data) {
                    if (!data.success) {
                        $('#teachersList').html(data); // Adjust ID for teacher list container
                    } else {
                        Swal.fire({ icon: 'error', text: data.message });
                    }
                }
            });
        }
    } catch (error) {
        var row = '<tr><td colspan="12">' + error.message + '</td></tr>';
        $('#tableBody').append(row);
    }
}

function showTeacherDetails(teacherId) {
    $.ajax({
        url: '/Teacher/GetTeacherDetails/' + teacherId,
        type: 'GET',
        success: function (data) {
            $('#teacherDetailsContent').html(data); 
            $('#teacherDetailsPopup').addClass('show'); 
        },
        error: function () {
            alert('Error loading teacher details.');
        }
    });
}

function sortTable(column) {
    var tableRows = $('#teacherDetails tbody tr').get();
    tableRows.sort(function (a, b) {
        var valA = $(a).find('td').eq(column).text().toUpperCase();
        var valB = $(b).find('td').eq(column).text().toUpperCase();
        return valA.localeCompare(valB);
    });
    $('#tableBody').empty().append(tableRows);

}

function copyToClipboard(element) {
    var text = element.getAttribute('data-email') || element.getAttribute('data-contact');
    navigator.clipboard.writeText(text).then(function () {
        $(element).tooltip('dispose').attr('title', 'Copied!').tooltip();
        $(element).tooltip('show');


    }).catch(function (err) {
        console.error('Could not copy text: ', err);
    });
}


function deleteTeacher(id) {
    Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: '/Teacher/DeleteTeacher/' + id,
                type: 'POST',
                success: function (response) {
                    if (response.success) {
                        $('#searchResults').empty().hide();
                        $('#teacherDetails').show();
                        $('#tableBody tr:has(td:contains(' + id + '))').remove();
                        loadData(currentPage, pageSize);
                        Swal.fire('Deleted!', 'Record deleted successfully.', 'success');

                    } else {
                        Swal.fire('Alert!', response.message, 'warning');
                    }
                },
                error: function (error) {
                    console.log(error);
                    Swal.fire('Error!', 'An error occurred while deleting the teacher.', 'error');
                }
            });
        }
    });
}

function addTeacherSuccess(response) {
    if (response.success) {
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: response.message,
            showCancelButton: false,
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {

                loadData(currentPage, pageSize);
                $('#addTeacherForm').hide();
                $('#addTeacherForm').find('input[type=text], input[type=number], input[type=date], select').val(''); // Clear form fields
                $('#teacherDetails').show();
                $('#addNew').show();
                $('#heading').show();
                $('#hidable_details').show();
                $('#searchResults').empty().hide();


            }
        });
    } else {
        Swal.fire({ icon: 'warning', title: 'Alert!', text: response.message });
    }
}


function editTeacher(id) {
    $.ajax({
        url: '/Teacher/UpsertTeacher/' + id,
        type: 'GET',
        success: function (data) {
            $('#addTeacherForm').html(data);
            $('#teacherDetails').hide();
            $('#hidable_details').hide();
            $('#addTeacherForm').show();
            $.validator.unobtrusive.parse($('#addTeacherForm'));
            $('#searchResults').empty().hide();
            $('#heading').hide();

        },
        error: function (error) {
            console.log(error);
            Swal.fire('Error!', 'An error occurred while fetching teacher details.', 'error');
        }

    });

}

function addTeacherFailure(error) {
    console.log(error);
    Swal.fire('Error!', 'An error occurred while adding the teacher.', 'error');
}

function toggleEnable(id, enable, Name) {
    var action = enable ? "enable" : "disable";
    var confirmationMessage = "Are you sure you want to " + action + " the '" + Name + "' teacher?";
    Swal.fire({
        title: 'Confirm',
        text: confirmationMessage,
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: 'Yes',
        cancelButtonText: 'No'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: '/Teacher/ToggleTeacher',
                type: 'POST',
                data: { id: id, enable: enable },
                success: function (response) {
                    if (response.success) {
                        $('#searchResults').empty().hide();
                        $('#teacherDetails').show();
                        currentPage === 1;
                        loadData(currentPage, pageSize);
                        Swal.fire('Success!', response.message, 'success');
                    } else {
                        Swal.fire('Alert!', response.message, 'warning');
                    }
                },
                error: function (error) {
                    console.log(error);
                    Swal.fire('Error!', 'An error occurred while toggling teacher status.', 'error');
                }
            });
        }
    });
}

function downloadExcel() {
    $.ajax({
        url: '/Teacher/DownloadExcel',
        type: 'GET',
        xhrFields: {
            responseType: 'blob'
        },
        success: function (data, textStatus, jqXHR) {
            var blob = new Blob([data], { type: jqXHR.getResponseHeader('Content-Type') });
            var url = window.URL.createObjectURL(blob);
            var anchor = document.createElement('a');
            anchor.href = url;
            anchor.download = 'Teachers.xlsx';
            document.body.appendChild(anchor);
            anchor.click();
            document.body.removeChild(anchor);
            window.URL.revokeObjectURL(url);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error downloading Excel file:', textStatus, errorThrown);
            // Handle error, show an alert, etc.
        }
    });
}


function backTeacher() {
    $('#addTeacherForm').hide();
    $('#addTeacherForm').find('input[type=text], input[type=number], input[type=date],input[type=email], select').val('');
    $('#teacherDetails').show();
    $('#hidable_details').show();
    $('#heading').show();


}