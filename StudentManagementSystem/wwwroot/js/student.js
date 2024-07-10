currentPage = 1;
pageSize = 5;
totalPage = 0;

$(document).ready(function () {

    loadData(currentPage, pageSize);
    
    
    $('input[type=text], input[type=email], select').each(function () {
        var req = $(this).attr('data-val-required');
        if (undefined != req) {
            var label = $('label[for="' + $(this).attr('id') + '"]');
            var text = label.text();
            if (text.length > 0) {
                label.append('<span style="color:red"> *</span>');
            }
        }
    });

    $('#addNew').click(function () {
        $('#studentDetails').hide();
        $('#hidable_details').hide();
        $('#heading').hide();
        $('#nlogTable').hide();
        
        $.ajax({
            url: '/Student/UpsertStudent',
            type: 'GET',
            success: function (response) {
                $('#addStudentForm').html(response);
                $.validator.unobtrusive.parse($('#addStudentForm'));
                $('#addStudentForm').show();
            }
        });
    });



    $('#studentDetails th').click(function () {
        var column = $(this).index();
        sortTable(column);
    });

    //Sorting based on active state
    $('#filterCriteria').change(function () {
        loadData(currentPage, pageSize);
        
    });

    $("#searchQuery").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "/Student/SearchAutoComplete",
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

    $('#searchQuery').on('input', function () {
        loadData(currentPage, pageSize);
        /*loadData(1, $("#pageSize").val());*/
    });



    
    $('#pageSize').change(function () {
        pageSize = parseInt($(this).val());
        loadData(currentPage, pageSize);
        loadNlogLoist();
    });

    $(document).ready(function () {
        // Initialize tooltips
        $('[data-toggle="tooltip"]').tooltip();
    });

   
    // Close button functionality
    $(document).on('click', '#closeStudentDetailsPopup', function () {
        $('#studentDetailsPopup').removeClass('show'); 
    });

   
    $('#downloadExcelButton').click(function () {
        downloadExcel();
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
        loadNlogLoist();
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
        loadNlogLoist();
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
            var formData = searchform.serialize()
            console.log(formData);
            data = await $.ajax({
                url: '/Student/SearchStudent',
                type: 'GET',
                data: formData,
                success: function (data) {
                    if (!data.success) {
                        $('#studentsList').html(data);
                    }
                    else {
                        Swal.fire({ icon: 'error', text: data.message });
                    }
                }
            });
        }
        else {
            var form = $('#paginationForm');
            var formData = form.serialize()

            formData += '&PageNumber=' + currentPage;
            
            data = await $.ajax({
                url: '/Student/DisplayAllStudents',
                type: 'GET',
                data: formData,
                success: function (data) {
                    if (!data.success) {
                        $('#studentsList').html(data);
                    }
                    else {
                        Swal.fire({ icon: 'error', text: data.message });
                    }
                }
            });
        }
        
    }
    catch {
        var row = '<tr>' + '<td colspan="12">' + data.message + '</td>' + '</tr>';
        $('#tableBody').append(row);
    }
}

function showStudentDetails(studentId) {
    $.ajax({
        url: '/Student/GetStudentDetails/' + studentId,
        type: 'GET',
        success: function (data) {
            $('#studentDetailsContainer').html(data);
            
           
        },
        error: function () {
            alert('Error loading student details.');
        }
    });
}

// Function to show student details popup
// Function to show student details popup
function showStudentDetails(studentId) {
    $.ajax({
        url: '/Student/GetStudentDetails/' + studentId,
        type: 'GET',
        success: function (data) {
            $('#studentDetailsContent').html(data); // Update popup content with student details
            $('#studentDetailsPopup').addClass('show'); // Show the popup
        },
        error: function () {
            alert('Error loading student details.');
        }
    });
}





/*copy the email and contact number*/
function copyToClipboard(element) {
    var text = element.getAttribute('data-email')|| element.getAttribute('data-contact');   
    navigator.clipboard.writeText(text).then(function () {
        $(element).tooltip('dispose').attr('title', 'Copied!').tooltip();
        $(element).tooltip('show');

        
    }).catch(function (err) {
        console.error('Could not copy text: ', err);
    });
}



function addStudentSuccess(response) {
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
                loadNlogLoist();
                $('#addStudentForm').hide();
                $('#addStudentForm').find('input[type=text], input[type=number], input[type=date], select').val('');
                $('#studentDetails').show();
                $('#hidable_details').show();
                $('#nlogTable').show();
                $('#heading').show();
                $('#searchResults').empty().hide();


            }
        });
    } else {
        Swal.fire({ icon: 'warning', title: 'Alert!', text: response.message });
    }
}

function addStudentFailure(error) {
    console.log(error);
    Swal.fire('Error!', 'An error occurred while adding the student.', 'error');
}

function editStudent(id) {
    $.ajax({
        url: '/Student/UpsertStudent/' + id,
        type: 'GET',
        success: function (data) {
            $('#addStudentForm').html(data);
            $('#studentDetails').hide();
            $('#hidable_details').hide();
            $('#addStudentForm').show();
            $('#searchResults').empty().hide();
            $('#heading').hide();
        },
        error: function (error) {
            console.log(error);
            Swal.fire('Error!', 'An error occurred while fetching student details.', 'error');
        }

    });

}

function deleteStudent(id) {
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
                url: '/Student/DeleteStudent/' + id,
                type: 'POST',
                success: function (response) {
                    $('#searchResults').empty().hide();
                    $('#studentDetails').show();
                    if (response.success) {
                        $('#tableBody tr:has(td:contains(' + id + '))').remove();
                        loadData(currentPage, pageSize);
                        Swal.fire('Deleted!', 'Record deleted successfully.', 'success');
                    } else {
                        Swal.fire('Allert!', response.message, 'warning');
                    }
                },
                error: function (error) {
                    console.log(error);
                    Swal.fire('Error!', 'An error occurred while deleting the student.', 'error');
                }
            });
        }
    });
}

function backStudent() {
    $('#addStudentForm').hide();
    $('#addStudentForm').find('input[type=text], input[type=number], input[type=date],input[type=email], select').val('');
    $('#studentDetails').show();
    $('#hidable_details').show();
    $('#heading').show();
}

function toggleEnable(id, enable, Name) {
    var action = enable ? "enable" : "disable";
    var confirmationMessage = "Are you sure you want to " + action + " the '" + Name + "' student?";
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
                url: '/Student/ToggleStudent',
                type: 'POST',
                data: { id: id, enable: enable },
                success: function (response) {
                    if (response.success) {
                        $('#searchResults').empty().hide();
                        $('#studentDetails').show();
                        currentPage === 1;
                        loadData(currentPage, pageSize);
                        Swal.fire('Success!', response.message, 'success');
                    } else {
                        Swal.fire('Alert!', response.message, 'warning');
                    }
                },
                error: function (error) {
                    console.log(error);
                    Swal.fire('Error!', 'An error occurred while toggling student status.', 'error');
                }
            });
        }
    });
}

function sortTable(column) {
    var tableRows = $('#studentDetails tbody tr').get();
    tableRows.sort(function (a, b) {
        var valA = $(a).find('td').eq(column).text().toUpperCase();
        var valB = $(b).find('td').eq(column).text().toUpperCase();
        return valA.localeCompare(valB);
    });
    $('#tableBody').empty().append(tableRows);
}



function updatePagination(currentPage, totalPage) {
    if (currentPage === 1) {
        $('#prevButton').addClass('disabled');
    }

    if (currentPage === totalPage) {
        $('#nextButton').addClass('disabled');
    }
}


function downloadExcel() {
    // Make an AJAX request to the server to download Excel file
    $.ajax({
        url: '/Student/DownloadExcel',
        type: 'GET',
        xhrFields: {
            responseType: 'blob' // Set the AJAX response type to blob
        },
        success: function (blob) {
            // On success, create a temporary anchor element to trigger download
            var url = window.URL.createObjectURL(blob);
            var anchor = document.createElement('a');
            anchor.href = url;
            anchor.download = 'Students.xlsx';
            document.body.appendChild(anchor);
            anchor.click();
            setTimeout(function () {
                document.body.removeChild(anchor);
                window.URL.revokeObjectURL(url);
            }, 0);
        },
        error: function (error) {
            console.error('Error downloading Excel file:', error);
            // Handle error if necessary
        }
    });
}
