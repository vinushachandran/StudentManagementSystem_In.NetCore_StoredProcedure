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
        $('#subjectDetails').hide();
        $('#hidable_details').hide();
        $('#heading').hide();
        $('#nlogTable').hide();

        $.ajax({
            url: '/Subject/UpsertSubject',
            type: 'GET',
            success: function (response) {
                $('#addSubjectForm').html(response);
                $.validator.unobtrusive.parse($('#addSubjectForm'));
                $('#addSubjectForm').show();
            }
        });
    });

    $('#subjectDetails th').click(function () {
        var column = $(this).index();
        sortTable(column);
    });

    // Sorting based on active state
    $('#filterCriteria').change(function () {
        loadData(currentPage, pageSize);
    });

    $("#searchQuery").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "/Subject/SearchAutoComplete",
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
    
    var filterCriteria = $('#filterCriteria').val();

    try {
        var query = $('#searchQuery').val();

        if (query.trim() !== '') {
            var searchform = $('#searchForm');
            /*var formData = searchform.serialize()*/
            
            data = await $.ajax({
                url: '/Subject/SearchSubject',
                type: 'GET',
                data: searchform.serialize(),
                
                success: function (data) {
                    if (!data.success) {
                        $('#subjectsList').html(data);
                    } else {
                        Swal.fire({ icon: 'error', text: data.message });
                    }
                }
            });
        } else {
            var form = $('#paginationForm');
            var formData = form.serialize()

            formData += '&PageNumber=' + currentPage;

            data = await $.ajax({
                url: '/Subject/DisplayAllSubjects',
                type: 'GET',
                data: formData,
                success: function (data) {
                    if (!data.success) {
                        $('#subjectsList').html(data);
                    } else {
                        Swal.fire({ icon: 'error', text: data.message });
                    }
                }
            });
        }

    } catch {
        var row = '<tr>' + '<td colspan="12">' + data.message + '</td>' + '</tr>';
        $('#tableBody').append(row);
    }
}




function addSubjectSuccess(response) {
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
                $('#addSubjectForm').hide();
                $('#addSubjectForm').find('input[type=text], input[type=number], input[type=date], input[type=email], select').val('');
                $('#subjectDetails').show();
                $('#hidable_details').show();
                $('#heading').show();
                $('#searchResults').empty().hide();
            }
        });
    } else {
        Swal.fire({ icon: 'warning', title: 'Alert!', text: response.message });
    }
}

function addSubjectFailure(error) {
    console.log(error);
    Swal.fire('Error!', 'An error occurred while adding the subject.', 'error');
}

function editSubject(id) {
    $.ajax({
        url: '/Subject/UpsertSubject/' + id,
        type: 'GET',
        success: function (data) {
            $('#addSubjectForm').html(data);
            $('#subjectDetails').hide();
            $('#hidable_details').hide();
            $('#addSubjectForm').show();
            $('#searchResults').empty().hide();
            $('#heading').hide();

        },
        error: function (error) {
            console.log(error);
            Swal.fire('Error!', 'An error occurred while fetching subject details.', 'error');
        }
    });
}

function deleteSubject(id) {
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
                url: '/Subject/DeleteSubject/' + id,
                type: 'POST',
                success: function (response) {
                    $('#searchResults').empty().hide();
                    $('#subjectDetails').show();
                    if (response.success) {
                        $('#tableBody tr:has(td:contains(' + id + '))').remove();
                        loadData(currentPage, pageSize);
                        Swal.fire('Deleted!', 'Record deleted successfully.', 'success');
                    } else {
                        Swal.fire('Alert!', response.message, 'warning');
                    }
                },
                error: function (error) {
                    console.log(error);
                    Swal.fire('Error!', 'An error occurred while deleting the subject.', 'error');
                }
            });
        }
    });
}

function backSubject() {
    $('#addSubjectForm').hide();
    $('#addSubjectForm').find('input[type=text], input[type=number], input[type=date], input[type=email], select').val('');
    $('#subjectDetails').show();
    $('#hidable_details').show();
    $('#heading').show();
}

function toggleEnable(id, enable, Name) {
    var action = enable ? "enable" : "disable";
    var confirmationMessage = "Are you sure you want to " + action + " the '" + Name + "' subject?";
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
                url: '/Subject/ToggleSubject',
                type: 'POST',
                data: { id: id, enable: enable },
                success: function (response) {
                    if (response.success) {
                        $('#searchResults').empty().hide();
                        $('#subjectDetails').show();
                        currentPage === 1;
                        loadData(currentPage, pageSize);
                        Swal.fire('Success!', response.message, 'success');
                    } else {
                        Swal.fire('Alert!', response.message, 'warning');
                    }
                },
                error: function (error) {
                    console.log(error);
                    Swal.fire('Error!', 'An error occurred while toggling subject status.', 'error');
                }
            });
        }
    });
}

function sortTable(column) {
    var tableRows = $('#subjectDetails tbody tr').get();
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

// Download as Excel file
function downloadExcel() {
    $.ajax({
        url: '/Subject/DownloadExcel',
        type: 'GET',
        xhrFields: {
            responseType: 'blob'
        },
        success: function (blob) {
            var url = window.URL.createObjectURL(blob);
            var anchor = document.createElement('a');
            anchor.href = url;
            anchor.download = 'Subjects.xlsx';
            document.body.appendChild(anchor);
            anchor.click();
            setTimeout(function () {
                document.body.removeChild(anchor);
                window.URL.revokeObjectURL(url);
            }, 0);
        },
        error: function (error) {
            console.error('Error downloading Excel file:', error);
        }
    });
}
