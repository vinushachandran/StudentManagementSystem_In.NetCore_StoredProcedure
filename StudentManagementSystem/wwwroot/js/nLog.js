$(document).ready(function () { 
    
        
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


    

    
    loadNlogLoist();
    
});
google.charts.load('current', { 'packages': ['corechart'] });
google.charts.setOnLoadCallback(function () {
    drawChart();
    drawColumnChart();
    drawDailyChart();
    
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
        url: '/NLog/GetDailyLogCounts',
        method: 'GET',
        success: function (response) {
            if (response.success) {
                var logCounts = response.data;
               
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Month');
                data.addColumn('number', 'Info');
                data.addColumn('number', 'Warn');
                data.addColumn('number', 'Error');

                for (const item of logCounts) {
                    data.addRows([
                        [item.month, item.infoCount, item.warningCount, item.errorCount]
                    ]);
                }


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





function drawDailyChart() {
    var form = $('#logFilterForm');
    $.ajax({
        url: '/NLog/GetDailyLogCounts',
        type: 'GET',
        data: form.serialize(),
        dataType: 'json',
        success: function (data) {
            if (data.success) {
                var lineChartData = [];
                for (const item of data.data) {
                    lineChartData.push([
                        item.month,
                        item.infoCount,
                        item.errorCount,
                        item.warningCount
                    ]);
                }

                var lineData = google.visualization.arrayToDataTable([
                    ['Month', 'Information Count', 'Error Count', 'Warning Count'],
                    ...lineChartData
                ]);

                var options = {
                    title: 'Log Information',
                    curveType: 'function',
                    hAxis: {
                        title: 'Month'
                    },
                    vAxis: {
                        title: 'Count'
                    },
                    height: 450,
                    width: 500,
                    legend: { position: 'bottom' },
                    chartArea: {
                        width: '90%',
                        height: '60%'
                    },
                    titleTextStyle: {
                        fontSize: 20,
                        bold: true
                    }
                };

                var chart = new google.visualization.LineChart(document.getElementById('lineChart'));
                chart.draw(lineData, options);

                $('#downloadlinePdfButton').off('click').on('click', function () {
                    html2canvas(document.getElementById('lineChart')).then(canvas => {
                        var imgData = canvas.toDataURL('image/png');
                        var pdf = new jspdf.jsPDF();
                        pdf.addImage(imgData, 'PNG', 15, 40, 180, 160);
                        pdf.save('Daily Report.pdf');
                    });
                });
            }
        }
    });
}



