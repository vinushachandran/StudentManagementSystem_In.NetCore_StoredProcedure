$(document).ready(function () {
    loadSubjectTeacherAllocationData();

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


    $('.addNew1').click(function () {
        $('.addNew1').hide();
        $('#subjectAllocationTable').hide();
        $.ajax({
            url: '/Allocation/UpsertTeacherSubject',
            type: 'GET',
            success: function (response) {
                $('#addTeacherSubjectAllocationForm').html(response);
                $.validator.unobtrusive.parse($('#addTeacherSubjectAllocationForm'));
                $('#addTeacherSubjectAllocationForm').show();
                $('#hidable-items1').hide();
                $('#teacherSubjectAllocationTable').hide();

            }
        });
    });

    $('#searchQuery1').on('input', function () {
        var query = $(this).val();
        var criteria = $('#searchCriteria1').val();

        if (query.trim() !== '') {
            $.ajax({
                url: '/Allocation/SearchSubjectAllocation',
                type: 'GET',
                data: { query: query, criteria: criteria },
                success: function (response) {
                    console.log(response)

                    $('#teacherSubjectAllocationTable').html(response);

                },
                error: function (error) {
                    console.log(error);
                    Swal.fire('Error!', 'An error occurred while searching.', 'error');
                }
            });
        } else {
            $('#teacherSubjectAllocationTable').show(); // Show table body
            $('#SubjectSearchResults').empty().hide();

        }
    });

    //For Student Allocation
    loadStudentAllocationData();

    //Subject Teachers
    $('.addNew2').click(function () {
        $('.addNew2').hide();
        $('#studentAllocationTableBody').hide();
        $('#hidable-items').hide();
        $('#enableSelection').hide();
        $.ajax({
            url: '/Allocation/AddStudentAllocation',
            type: 'GET',
            success: function (response) {
                $('#addStudentAllocationForm').html(response);
                activeSubjectTeacher();
                $.validator.unobtrusive.parse($('#addStudentAllocationForm'));
                $('#addStudentAllocationForm').show();

            }
        });

    });

    $('#filterCriteria').change(function () {
        loadStudentAllocationData();
    });


    $('#searchQuery').on('input', function () {
        var query = $(this).val();
        var criteria = $('#searchCriteria').val();

        if (query.trim() !== '') {
            $.ajax({
                url: '/Allocation/SearchStudentAllocation',
                type: 'GET',
                data: { query: query, criteria: criteria },
                success: function (response) {
                    //console.log(response)
                    
                    $("#studentAllocationTableBody").html(response);

                },
                error: function (error) {
                    console.log(error);
                    Swal.fire('Error!', 'An error occurred while searching.', 'error');
                }
            });
        } else {
            $('#studentAllocationTableBody').show(); // Show table body
           

        }
    });
});



function loadSubjectTeacherAllocationData() {
    $.ajax({
        url: '/Allocation/GetAllSubjectAllocations',
        type: 'GET',
        success: function (data) {
            //console.log(data)
            $('#teacherSubjectAllocationTable').html(data);
        },
        error: function () {

            console.error('Failed to load data.');
        }
    });
}



    function addTeacherSubjectAllocationSuccess(response) {
        if (response.success) {
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: response.message,
                showCancelButton: false,
                confirmButtonText: 'OK'
            }).then((result) => {
                if (result.isConfirmed) {

                    loadSubjectTeacherAllocationData();
                    $('#SubjectAllocationForm').hide();
                    $('#SubjectAllocationForm').find('input[type=text], select').val('');
                    $('#teacherSubjectAllocationTable').show();
                    $('.addNew1').show();
                    $('#hidable-items1').show();
                }
            });
        } else {
            Swal.fire({ icon: 'warning', title: 'Allert', text: response.message });
        }
    }


    function addTeacherSubjectAllocationFailure(error) {
        console.log(error);
        Swal.fire('Allert!', 'An error occurred while adding the teacher.', 'worning');
    }

    function backSubjectAllocation() {
        $('#SubjectAllocationForm').hide();
        $('#SubjectAllocationForm').find('input[type=text], select').val('');
        $('#teacherSubjectAllocationTable').show();
        $('#hidable-items1').show();
        $('.addNew1').show();


    }

    //function backStudent() {
    //    $('#addStudentAllocationForm').hide();
    //    $('#addStudentAllocationForm').find('input[type=text], select').val('');
    //    $('#studentAllocationTableBody').show();
    //    $('.addNew2').show();
    //    $('#hidable-items').show();
    //    $('#enableSelection').show();
    //}

    function deleteTeacherSubjectAllocation(id) {
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
                    url: '/Allocation/DeleteSubjectAllocation/' + id,
                    type: 'POST',
                    success: function (response) {
                        if (response.success) {
                            $('#tableBody tr:has(td:contains(' + id + '))').remove();
                            loadSubjectTeacherAllocationData();
                            Swal.fire('Deleted!', 'Record deleted successfully.', 'success');

                        } else {
                            Swal.fire('Allert!', response.message, 'warning');
                        }
                    },
                    error: function (error) {
                        console.log(error);
                        Swal.fire('Alert!', 'An error occurred while deleting the teacher.', 'warning');
                    }
                });
            }
        });
    }

    function editTeacherSubjectAllocation(id) {
        $.ajax({
            url: '/Allocation/UpsertTeacherSubject/' + id,
            type: 'GET',
            success: function (data) {
                $('#addTeacherSubjectAllocationForm').html(data);
                $('#teacherSubjectAllocationTable').hide();
                $('#addTeacherSubjectAllocationForm').show();
                $('.addNew1').hide();
                $('#hidable-items1').hide();

            },
            error: function (error) {
                console.log(error);
                Swal.fire('Alert!', 'An error occurred while fetching teacher details.', 'warning');
            }

        });

    }


    //For Students Allocation

    function loadStudentAllocationData() {
        var filterCriteria = $('#filterCriteria').val();
        $.ajax({
            url: '/Allocation/AllStudentAllocation',
            type: 'GET',
            data: { isActive: filterCriteria },
            success: function (data) {
                //console.log(data);
                $("#studentAllocationTableBody").html(data);

            },
            error: function () {

                console.error('Failed to load data.');
            }
        });
    }


    //Available subject and teacher
function activeSubjectTeacher() {
    $.ajax({
        url: '/Allocation/GetAllocatedSubject',
        type: 'GET',
        success: function (response) {
            $('#subjectDropdown').empty().append($('<option>', {
                value: '',
                text: '-Select Subject-'
            }));
            $('#teacherDropdown').empty().append($('<option>', {
                value: '',
                text: '-Select Teacher-'
            }));

            if (response.success) {
                $.each(response.data, function (index, item) {
                    $('#subjectDropdown').append($('<option>', {
                        value: item.subjectID,
                        text: item.name
                    }));
                });
            } else {
                console.log('No data found.');
            }
        },
        error: function () {
            console.log('Error fetching allocated subjects.');
        }
    });
}



    //Add Student allocation
    function StudentAllocationSuccess(response) {
        if (response.success) {
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: response.message,
                showCancelButton: false,
                confirmButtonText: 'OK'
            }).then((result) => {
                if (result.isConfirmed) {
                    loadStudentAllocationData();
                    $('#addStudentAllocationForm').hide();
                    $('#subjectAllocationID').val('');
                    $('#addStudentAllocationForm').find('select').val('');
                    $('.addNew2').show();
                    $('#addStudentAllocationForm').hide();
                    $('#studentAllocationTableBody').show();
                    $('#hidable-items').show();
                    $('#enableSelection').show();

                }
            });
        } else {
            Swal.fire({ icon: 'warning', title: '', text: response.message, error: response.error });
        }
    }

    function StudentAllocationFailure(xhr, status, error) {
        console.error("Error adding teacher subject allocation:", error);
        Swal.fire('Alert!', 'An error occurred while adding the teacher subject allocation.', 'warning');
    }

    function deleteStudentAllocation(id) {
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
                    url: '/Allocation/DeleteStudentAllocation/' + id,
                    type: 'POST',
                    success: function (response) {
                        if (response.success) {
                            $('#studentAllocationTableBody tr:has(td:contains(' + id + '))').remove();
                            loadStudentAllocationData();
                            Swal.fire('Deleted!', 'Record deleted successfully.', 'success');

                        } else {
                            Swal.fire('Alert!', response.message, 'warning');
                        }
                    },
                    error: function (error) {
                        console.log(error);
                        Swal.fire('Alert!', 'An error occurred while deleting the teacher.', 'warning');
                    }
                });
            }
        });
    }


    //Delete full allocation of a student

    function deleteAllStudentAllocations(id) {
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
                    url: '/Allocation/DeleteAllStudentAllocations/' + id,
                    type: 'POST',
                    success: function (response) {
                        if (response.success) {
                            $('#studentAllocationTableBody' + id).remove();
                            loadStudentAllocationData();
                            Swal.fire('Deleted!', 'Record deleted successfully.', 'success');
                        } else {
                            Swal.fire('Alert!', response.message, 'warning');
                        }
                    },
                    error: function (error) {
                        console.log(error);
                        Swal.fire('Alert!', 'An error occurred while deleting the allocations.', 'warning');
                    }
                });
            }
        });
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
                            loadStudentAllocationData();
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


