$(document).ready(function () { 
    
    //var today = new Date();
    //$("#startDate").datepicker({
    //    /*dateFormat: "dd-mm-yy",*/
    //    changeYear: true,
    //    changeMonth: true,
    //    yearRange: "-100:+0",
    //    maxDate: "0",
    //    onClose: function (selectedDate) {
    //        if (selectedDate) {
    //            $("#endDate").datepicker("option", "minDate", selectedDate);
    //        } else {
    //            $("#endDate").datepicker("option", "minDate", null);
    //        }
    //        $("#endDate").datepicker("setDate", null);
    //    }
    //}).datepicker("setDate", today);

    //$("#endDate").datepicker({
    //    /*dateFormat: "dd-mm-yy",*/
    //    changeYear: true,
    //    changeMonth: true,
    //    yearRange: "-100:+0",
    //    maxDate: "0",
    //    onClose: function (selectedDate) {
    //        if (selectedDate) {

    //           /* var endDate = $.datepicker.parseDate("dd-dd-yy", selectedDate);*/
               
    //            $("#endDate").datepicker("setDate", endDate);


    //        } else {
    //            $("#endDate").val("");

    //        }
    //    }
    //}).datepicker("setDate", today);

    
    // Event handlers for filters based on date
    $('#startDate').change(function () {
       
        loadNlogLoist();
    });
    $('#endDate').change(function () {
        
        loadNlogLoist();
    });

    // Event handlers for filters based on level
    $('#logLevel').change(function () {
        filterByLevelLog();
    });

    $('#pieChartModal').on('shown.bs.modal', function () {
        drawChart();
        //$('#nlogTable').hide();
    });

    $('#columnChartModal').on('shown.bs.modal', function () {
        drawColumnChart();
    });

    $('#lineChartModal').on('shown.bs.modal', function () {
        drawDailyChart();
    });


    $('#filteredChartModal').on('shown.bs.modal', function () {
        drawFiterChart();
    });

    
    loadNlogLoist();
    
});
google.charts.load('current', { 'packages': ['corechart'] });
google.charts.setOnLoadCallback(function () {
    drawChart();
    drawColumnChart();
    /*drawFiterChart();*/
});
function loadNlogLoist() {
    var form = $('#logFilterForm');
    $.ajax({
        url: '/NLog/DisplayAllNLogs',
        type: 'GET',
        data: form.serialize(),

        success: function (data) {
            if (!data.success) {
                $('#nlogTable').html(data);
            }
            else {
                Swal.fire({ icon: 'error', text: data.message });
            }
        }
    });

}



function filterByDateLog() {
    var form = $('#logFilterForm');
    $.ajax({
        url: '/NLog/FilterLogsByDate',
        type: 'GET',
        data: form.serialize(),
        success: function (data) {
            $('#nlogTable').html(data);
        },
        error: function () {
            Swal.fire({
                icon: 'error',
                text: 'An error occurred while retrieving the logs.'
            });
        }
    });
            
        
 
}


//function downloadPdf() {
//    var form = $('#logFilterForm');
//    $.ajax({
//        url: '/NLog/DownloadPdf'
//        data: form.serialize(),
//    });
//}

function downloadPdf() {
    var form = $('#logFilterForm');

    // Perform AJAX request to fetch data
    $.ajax({
        url: '/NLog/DownloadPdf',
        type: 'GET', // Use GET method to fetch data
        data: form.serialize(),
        success: function (response) {
            
            window.location.href = '/NLog/DownloadPdf?' + form.serialize();
        },
        error: function (xhr, status, error) {
            console.error('Error fetching data:', error);
        }
    });
}


function filterByLevelLog() {
    var level = $('#logLevel').val();

    $.ajax({
        url: '/NLog/FilterLogsByLevel',
        type: 'GET',
        data: {
            level: level
        },
        success: function (data) {
            $('#nlogTable').html(data);
        },
        error: function () {
            Swal.fire({
                icon: 'error',
                text: 'An error occurred while retrieving the logs.'
            });
        }
    });
}

function drawChart() {
    var form = $('#logFilterForm');
    $.ajax({
        url: '/NLog/GetLogLevelData',
        type: 'GET',
        data: form.serialize(),
        dataType: 'json', 
        success: function (data) {
            console.log(data)
            if (data.success) {
                var chartData = [
                    ['Log Level', 'Count'],
                    ['Info', data.infoCount],
                    ['Warn', data.warnCount],
                    ['Error', data.errorCount]
                ];

                var options = {
                    title: 'Log Levels Distribution',
                    pieHole: 0.4,
                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                chart.draw(google.visualization.arrayToDataTable(chartData), options);
                $('#downloadPiePdfButton').off('click').on('click', function () {
                    html2canvas(document.getElementById('piechart')).then(canvas => {
                        var imgData = canvas.toDataURL('image/png');
                        var pdf = new jspdf.jsPDF();
                        pdf.addImage(imgData, 'PNG', 15, 40, 180, 160);
                        pdf.save('pie-chart.pdf');
                    });
                });
            } else {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: data.message 
                });
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            console.error('XHR Error:', errorThrown); 
            Swal.fire({
                icon: 'error',
                title: 'XHR Error',
                text: 'An error occurred while fetching data.'
            });
        }
    });
}


function drawColumnChart() {
    $.ajax({
        url: '/NLog/GetLogCountsByMonth',
        method: 'GET',
        success: function (response) {
            if (response.success) {
                var logCounts = response.data;
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Month');
                data.addColumn('number', 'Info');
                data.addColumn('number', 'Warn');
                data.addColumn('number', 'Error');

                data.addRows([
                    [logCounts.monthName, logCounts.infoCount, logCounts.warnCount, logCounts.errorCount]
                ]);

                var options = {
                    title: 'Log Counts by Month',
                    hAxis: {
                        title: 'Month',
                    },
                    vAxis: {
                        title: 'Log Count'
                    },
                    height: 450,
                    width: 550,
                    chartArea: {
                        width: '70%',
                        height: '75%'
                    },
                    titleTextStyle: {
                        fontSize: 20,
                        bold: true
                    }
                };

                var chart = new google.visualization.ColumnChart(
                    document.getElementById('columnchart'));

                chart.draw(data, options);

               
                $('#downloadcolumnPdfButton').off('click').on('click', function () {
                    html2canvas(document.getElementById('columnchart')).then(canvas => {
                        var imgData = canvas.toDataURL('image/png');
                        var pdf = new jspdf.jsPDF();
                        pdf.addImage(imgData, 'PNG', 15, 40, 180, 160);
                        pdf.save('column-chart.pdf');
                    });
                });
            } else {
                console.error('Error fetching log counts:', response.message);
            }
        },
        error: function (error) {
            console.error('Error in AJAX request:', error);
        }
    });
}



//function drawFiterChart() {
//    $.ajax({
//        url: '/NLog/FilterLogsByDate',
//        type: 'GET',
//        dataType: 'json',
//        success: function (response) {
//            console.log(response);
//            if (response.success) {
//                var logCounts = response.data;
//                var data = new google.visualization.DataTable();
//                data.addColumn('string', 'Month');
//                data.addColumn('number', 'Info');
//                data.addColumn('number', 'Warn');
//                data.addColumn('number', 'Error');

//                data.addRows([
//                    [logCounts.monthName, logCounts.infoCount, logCounts.warnCount, logCounts.errorCount]
//                ]);

//                var options = {
//                    title: 'Log Counts by Month',
//                    hAxis: {
//                        title: 'Month',
//                    },
//                    vAxis: {
//                        title: 'Log Count'
//                    },
//                    height: 450,
//                    width: 550,
//                    chartArea: {
//                        width: '70%',
//                        height: '75%'
//                    },
//                    titleTextStyle: {
//                        fontSize: 20,
//                        bold: true
//                    }
//                };

//                var chart = new google.visualization.ColumnChart(
//                    document.getElementById('columnchart'));

//                chart.draw(data, options);


//                $('#downloadcolumnPdfButton').off('click').on('click', function () {
//                    html2canvas(document.getElementById('columnchart')).then(canvas => {
//                        var imgData = canvas.toDataURL('image/png');
//                        var pdf = new jspdf.jsPDF();
//                        pdf.addImage(imgData, 'PNG', 15, 40, 180, 160);
//                        pdf.save('column-chart.pdf');
//                    });
//                });
//            } else {
                
//            }
            
//        },
//        error: function (xhr, textStatus, errorThrown) {
//            console.error('XHR Error:', errorThrown);
//            Swal.fire({
//                icon: 'error',
//                title: 'XHR Error',
//                text: 'An error occurred while fetching data.'
//            });
//        }
//    });
//}

//function drawDailyChart() {
//    var data = new google.visualization.DataTable();
//    data.addColumn('date', 'Day');
//    data.addColumn('number', 'Info');
//    data.addColumn('number', 'Warn');
//    data.addColumn('number', 'Error');

//    // Fetch data using AJAX
//    $.ajax({
//        url: '@Url.Action("GetDailyLogCounts", "Logs")',
//        type: 'POST',
//        data: $("#filterForm").serialize(),
//        success: function (result) {
//            var rows = [];
//            result.forEach(function (item) {
//                rows.push([new Date(item.LogDate), item.InfoCount, item.WarnCount, item.ErrorCount]);
//            });
//            data.addRows(rows);

//            var options = {
//                chart: {
//                    title: 'Daily Log Counts',
//                    subtitle: 'Counts of Info, Warn, and Error logs per day'
//                },
//                width: 800,
//                height: 500
//            };

//            var chart = new google.charts.Line(document.getElementById('lineChart'));
//            chart.draw(data, google.charts.Line.convertOptions(options));

//            // Handle PDF download
//            $("#downloadlinePdfButton").off('click').on('click', function () {
//                var pdf = new jsPDF();
//                pdf.text(20, 20, 'Daily Log Counts');
//                pdf.addImage(chart.getImageURI(), 'PNG', 15, 40, 180, 160);
//                pdf.save('DailyLogCounts.pdf');
//            });
//        },
//        error: function (error) {
//            console.log("Error:", error);
//        }
//    });
//}


