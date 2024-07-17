using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using SMS.BL.Student;
using SMS.BL.Student.Interface;
using SMS.Data;
using NLog.Web;
using NLog;
using SMS.BL.NLog.Interface;
using SMS.BL.NLog;
using Rotativa.AspNetCore;
using SMS.Common;
using SMS.BL.Teacher.Interface;
using SMS.BL.Teacher;
using SMS.BL.Subject.Interface;
using SMS.BL.Subject;
using SMS.BL.Allocation.Interface;
using SMS.BL.Allocation;

var logger = LogManager.Setup().LoadConfigurationFromAppSettings().GetCurrentClassLogger();
try
{
    logger.Debug("Initializing main");

    var builder = WebApplication.CreateBuilder(args);

    // Configure services
    builder.Services.AddDbContext<StudentManagementSystemContext>(options =>
        options.UseSqlServer(builder.Configuration.GetConnectionString("StudentManagementSystemContext")));

    builder.Services.AddControllersWithViews(options =>
    {
        // Register the custom model binder provider
        options.ModelBinderProviders.Insert(0, new DefaultDateModelProvider());
    });

    // Add services to the container
    builder.Services.AddControllersWithViews();
    builder.Services.AddScoped<IStudentRepository, StudentRepository>();
    builder.Services.AddScoped<ITeacherRepository, TeacherRepository>();
    builder.Services.AddScoped<INLogRepository, NlogRepository>();
    builder.Services.AddScoped<ISubjectRepository, SubjectRepository>();
    builder.Services.AddScoped<IAllocationRepository, AllocationRepository>();


    // Add NLog to ASP.NET Core
    builder.Logging.ClearProviders();
    builder.Host.UseNLog();

    var app = builder.Build();

    // Configure the HTTP request pipeline
    if (!app.Environment.IsDevelopment())
    {
        app.UseExceptionHandler("/Home/Error");
        // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
        app.UseHsts();
    }

    app.UseHttpsRedirection();
    app.UseStaticFiles();

    app.UseRouting();

    app.UseAuthorization();

    app.MapControllerRoute(
        name: "default",
        pattern: "{controller=Home}/{action=Index}/{id?}");

    // Configure Rotativa
    var env = app.Environment;
    RotativaConfiguration.Setup(env.WebRootPath, "Rotativa");

    app.Run();
}
catch (Exception ex)
{
    // NLog: catch setup errors
    logger.Error(ex, "Stopped program because of exception");
    throw;
}
finally
{
    // Ensure to flush and stop internal timers/threads before application exit (Avoid segmentation fault on Linux)
    LogManager.Shutdown();
}
