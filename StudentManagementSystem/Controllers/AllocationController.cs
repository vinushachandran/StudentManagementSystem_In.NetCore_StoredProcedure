using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ViewEngines;
using SMS.BL.Allocation.Interface;
using SMS.BL.NLog;
using SMS.BL.Student.Interface;
using SMS.BL.Subject.Interface;
using SMS.BL.Teacher.Interface;
using SMS.ViewModel.Allocations;
using SMS.ViewModel.ErrorResponse;
using SMS.Model.Subject;
using SMS.Model.Teacher;
using SMS.ViewModel.Subject;
using SMS.ViewModel.Teacher;
using SMS.ViewModel.StaticData;
using SMS.Model.Allocation;
using SMS.ViewModel.RepositoyResponse;
using SMS.Model.Student;
using SMS.ViewModel.Student;

namespace StudentManagementSystem.Controllers
{
    public class AllocationController : Controller
    {
        private readonly IAllocationRepository _allocationRepository;

        private readonly ISubjectRepository _subjectRepository;

        private readonly ITeacherRepository _teacherRepository;

        private readonly IStudentRepository _studentRepository;

        private readonly ILogger<SubjectController> _logger;

        private readonly ICompositeViewEngine _viewEngine;

        ErrorResponse errorResponse = new ErrorResponse();

        public AllocationController(IAllocationRepository allocationRepository, ISubjectRepository subjectRepository, ITeacherRepository teacherRepository, IStudentRepository studentRepository, ILogger<SubjectController> logger, ICompositeViewEngine viewEngine)
        {
            _allocationRepository = allocationRepository;
            _subjectRepository = subjectRepository;
            _teacherRepository = teacherRepository;
            _studentRepository = studentRepository;
            _logger = logger;
            _viewEngine = viewEngine;

           

           
        }

        public IActionResult Index()
        {
            return View();
        }

        /*************************************Subject Aloocation******************************************************/
        public ActionResult GetAllSubjectAllocations()
        {
            var errorResponse = new ErrorResponse();

            try
            {
                var response = _allocationRepository.GetAllSubjectAllocation();

                var viewModel = new AllocationViewModel
                {
                    SubjectAllocations = response.Data
                };

                if (viewModel.SubjectAllocations == null || viewModel.SubjectAllocations.Any())
                {
                    _logger.LogInformation(response.TotalMessages);
                    return PartialView("_AllSubjectAllocationsList", viewModel);
                }
                else
                {
                    errorResponse.Messages.Add(string.Format(StaticData.NO_DATA_FOUND, "AllSubjectAllocation"));
                    _logger.LogWarning(response.TotalMessages);
                    return Json(new { success = errorResponse.Success, message = response.TotalMessages });
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "AllSubjectAllocation"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = errorResponse.Success, message = errorResponse.ErrorMessages, error = ex.Message });
            }

        }


        public JsonResult IsSubjectAllocationInUse(long id)
        {
            var errorResponse = new ErrorResponse();
            try
            {
                var response = _allocationRepository.IsSubjectAllocationInUse(id);
                bool isAllocated = response.Success;
                _logger.LogInformation(response.TotalMessages);
                return Json(new { isAllocated = isAllocated });
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "IsSubjectAllocationInUse"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = errorResponse.ErrorMessages });
            }
        }


        /// <summary>
        /// Add new teacher or update the existing teacher
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult UpsertTeacherSubject(long id = 0)
        {
            var errorResponse = new ErrorResponse();
            try
            {
                var subjects = GetSubjects();
                var teachers = GetTeachers();

                var teacherList = teachers.Select(t => new
                {
                    TeacherID = t.TeacherID,
                    DisplayName = $"{t.TeacherRegNo} - {t.DisplayName}"
                }).ToList();

                var subjectList = subjects.Select(s => new
                {
                    SubjectID = s.SubjectID,
                    Name = $"{s.SubjectCode} - {s.Name}"
                }).ToList();

                ViewBag.Teachers = teacherList;
                ViewBag.Subjects = subjectList;

                if (id == 0)
                {

                    _logger.LogInformation(StaticData.SUCCESS_MESSAGE, "UpsertTeacherSubject");
                    return PartialView("_UpsertSubjectAllocationForm", new SubjectAllocationBO());
                }
                else
                {
                    var existingAllocation = _allocationRepository.GetSubjectAllocationByID(id);
                    _logger.LogInformation(StaticData.SUCCESS_MESSAGE, "UpsertTeacherSubject");
                    return PartialView("_UpsertSubjectAllocationForm", existingAllocation.Data);
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "UpsertTeacherSubject"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = errorResponse.ErrorMessages });
            }
        }

        /// <summary>
        /// Add new teacher or update the existing teacher 
        /// </summary>
        /// <param name="teacher"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UpsertTeacherSubject(SubjectAllocationBO subjectAllocationBO)
        {
            var errorResponse = new ErrorResponse();

            try
            {
                var response = new RepositoryResponse<bool>();
                if (ModelState.IsValid)
                {

                    try
                    {
                        response = _allocationRepository.UpsertSubjectAllocation(subjectAllocationBO);
                        _logger.LogInformation(response.TotalMessages);
                        return Json(new { success = response.Success, message = response.TotalMessages });
                    }
                    catch
                    {
                        errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "UpsertTeacherSubject"));
                        _logger.LogError(errorResponse.ErrorMessages);
                        return Json(new { success = errorResponse.Success, message = errorResponse.ErrorMessages });
                    }
                }
                else
                {
                    response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "UpsertTeacherSubject"));
                    _logger.LogWarning(response.TotalMessages);
                    return Json(new { success = errorResponse.Success, message = response.Message });
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "UpsertTeacherSubject"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = StaticData.SOMETHING_WENT_WRONG });
            }

        }

        /// <summary>
        /// Delete Subject allocation
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult DeleteSubjectAllocation(int id)
        {
            var response = new RepositoryResponse<bool>();
            var errorResponse = new ErrorResponse();
            try
            {
                response = _allocationRepository.DeleteSubjectAllocation(id);
                _logger.LogInformation(response.TotalMessages);
                return Json(new { success = response.Success, message = response.TotalMessages });
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "DeleteStudent"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = errorResponse.ErrorMessages });
            }
        }


        public ActionResult SearchSubjectAllocation(string query, string criteria)
        {
            var errorResponse = new ErrorResponse();
            try
            {
                var response = _allocationRepository.SearchSubjectAllocation(query, criteria);

                var viewModel = new AllocationViewModel
                {
                    SubjectAllocations = response.Data
                };

                if (viewModel.SubjectAllocations == null || viewModel.SubjectAllocations.Any())
                {
                    _logger.LogInformation(response.TotalMessages);
                    return PartialView("_AllSubjectAllocationsList", viewModel);
                }
                else
                {
                    errorResponse.Messages.Add(string.Format(StaticData.NO_DATA_FOUND, "All subject allocation"));
                    _logger.LogWarning(response.TotalMessages);
                    return Json(new { success = errorResponse.Success, message = response.TotalMessages });
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "All subject allocation"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = errorResponse.Success, message = errorResponse.ErrorMessages, error = ex.Message });
            }

        }



        /********************************************Student Allocation********************************************/
        public ActionResult AllStudentAllocation(bool? isActive=null)
        {
            var errorResponse = new ErrorResponse();

            try
            {
                var response = _allocationRepository.GetAllStudentAllocation(isActive);

                var viewModel = new AllocationViewModel
                {
                    StudentAllocationList = response.Data
                };

                if (viewModel.StudentAllocationList != null && viewModel.StudentAllocationList.Any())
                {
                    _logger.LogInformation(response.TotalMessages);
                    return PartialView("_AllStudentAllocationsList", viewModel);
                }
                else
                {
                    errorResponse.Messages.Add(string.Format(StaticData.NO_DATA_FOUND, "AllStudentAllocation"));
                    _logger.LogWarning(response.TotalMessages);
                    return Json(new { success = errorResponse.Success, message = response.TotalMessages });
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "AllStudentAllocation"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = errorResponse.Success, message = errorResponse.ErrorMessages, error = ex.Message });
            }
        }


        /// <summary>
        /// Add new teacher or update the existing teacher
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult AddStudentAllocation(long id = 0)
        {
            var errorResponse = new ErrorResponse();
            try
            {
                var students = GetStudents();

                var studentList = students.Select(s => new
                {
                    StudentID = s.StudentID,
                    Name = $"{s.StudentRegNo} - {s.DisplayName}"
                }).ToList();

                ViewBag.Students = studentList;

                if (id == 0)
                {

                    _logger.LogInformation(StaticData.SUCCESS_MESSAGE, "UpsertStudentAllocation");
                    return PartialView("_AddStudentAllocation", new StudentAllocationBO());
                }
                else
                {
                    var existingAllocation = _allocationRepository.GetSubjectAllocationByID(id);
                    _logger.LogInformation(StaticData.SUCCESS_MESSAGE, "UpsertTeacherSubject");
                    return PartialView("_AddStudentAllocation", existingAllocation.Data);
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "UpsertStudentAllocation"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = errorResponse.ErrorMessages });
            }
        }

        /// <summary>
        /// Add new teacher or update the existing teacher 
        /// </summary>
        /// <param name="teacher"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddStudentAllocation(StudentAllocationBO studentAllocation)
        {
            var errorResponse = new ErrorResponse();

            try
            {
                var response = new RepositoryResponse<bool>();
                if (ModelState.IsValid)
                {

                    try
                    {
                        response = _allocationRepository.UpsertStudentAllocation(studentAllocation);
                        _logger.LogInformation(response.TotalMessages);
                        return Json(new { success = response.Success, message = response.TotalMessages });
                    }
                    catch
                    {
                        errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "UpsertStudentAllocation"));
                        _logger.LogError(errorResponse.ErrorMessages);
                        return Json(new { success = errorResponse.Success, message = errorResponse.ErrorMessages });
                    }
                }
                else
                {
                    response.Message.Add(string.Format("Fill all data", "UpsertStudentAllocation"));
                    _logger.LogWarning(response.TotalMessages);
                    return Json(new { success = errorResponse.Success, message = response.Message });
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "UpsertTeacherSubject"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = StaticData.SOMETHING_WENT_WRONG });
            }

        }

        /// <summary>
        /// Get all allocated subjects
        /// </summary>
        /// <returns></returns>
        public ActionResult GetAllocatedSubject()
        {
            var errorResponse = new ErrorResponse();

            try
            {
                var response = _allocationRepository.GetAllocatedSubjects();

                var data = response.Data.ToList();

                if (data.Count > 0)
                {
                    return Json(new { success = true, data = data });
                }
                else
                {
                    return Json(new { success = false, message = "No Data Found" });
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "GetAllocatedSubject"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = StaticData.SOMETHING_WENT_WRONG });
            }

        }

        /// <summary>
        /// Get all allocated subjects
        /// </summary>
        /// <returns></returns>
        public ActionResult GetTeachersBySubject(long subjectId)
        {
            var errorResponse = new ErrorResponse();

            try
            {
                var response = _allocationRepository.GetTeacherForSubject(subjectId);

                var data = response.Data.ToList();

                if (data.Count > 0)
                {
                    return Json(new { success = true, data = data });
                }
                else
                {
                    return Json(new { success = false, message = "No Data Found" });
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "GetTeachersBySubject"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = StaticData.SOMETHING_WENT_WRONG });
            }

        }


        /// <summary>
        /// Delete Subject allocation
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult DeleteStudentAllocation(long id)
        {
            var response = new RepositoryResponse<bool>();
            var errorResponse = new ErrorResponse();
            try
            {
                response = _allocationRepository.DeleteStudentAllocation(id);
                _logger.LogInformation(response.TotalMessages);
                return Json(new { success = response.Success, message = response.TotalMessages });
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "DeleteStudentAllocation"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = errorResponse.ErrorMessages });
            }
        }

        /// <summary>
        /// get the all student alloaction 
        /// </summary>
        /// <returns></returns>
        public ActionResult SearchStudentAllocation(string query, string criteria)
        {
            var errorResponse = new ErrorResponse();
            try
            {
                var response = _allocationRepository.SearchStudentAllocation(query, criteria);

                var viewModel = new AllocationViewModel
                {
                    StudentAllocationList = response.Data
                };

                if (viewModel.StudentAllocationList == null || viewModel.StudentAllocationList.Any())
                {
                    _logger.LogInformation(response.TotalMessages);
                    return PartialView("_AllStudentAllocationsList", viewModel);
                }
                else
                {
                    errorResponse.Messages.Add(string.Format(StaticData.NO_DATA_FOUND, "AllStudentAllocation"));
                    _logger.LogWarning(response.TotalMessages);
                    return Json(new { success = errorResponse.Success, message = response.TotalMessages });
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "AllStudentAllocation"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = errorResponse.Success, message = errorResponse.ErrorMessages, error = ex.Message });
            }

        }

        //----------------------------------------------Common Data----------------------------------------------------//
        private IEnumerable<SubjectBO> GetSubjects()
        {
            SubjectViewModel subjectViewModel = new SubjectViewModel();
            subjectViewModel.IsEnable = true;
            var response = _subjectRepository.GetAllSubject(subjectViewModel);
            var subjects = response.Data;
            return subjects;
        }

        private IEnumerable<TeacherBO> GetTeachers()
        {
            TeacherViewModel teacherViewModel = new TeacherViewModel();
            teacherViewModel.IsEnable = true;
            var response = _teacherRepository.GetAllTeachers(teacherViewModel);
            var teachers = response.Data;
            return teachers;
        }

        private IEnumerable<StudentBO> GetStudents()
        {
            StudentViewModel studentViewModel = new StudentViewModel();
            studentViewModel.IsEnable = true;
            var response = _studentRepository.GetAllStudents(studentViewModel);
            var students = response.Data;
            return students;
        }
    }
}
