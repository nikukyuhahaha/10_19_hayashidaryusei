am4core.ready(function () {

  // Themes begin
  am4core.useTheme(am4themes_animated);
  // Themes end

  // Create chart instance
  var chart = am4core.create("chart_box", am4charts.XYChart);
  chart.scrollbarX = new am4core.Scrollbar();


  var today = new Date;
  console.log("月=" + (today.getMonth() + 1));
  console.log("日=" + today.getDate());

  var day1ago = new Date();
  day1ago.setDate(today.getDate() - 1);
  var day2ago = new Date();
  day2ago.setDate(today.getDate() - 2);
  var day3ago = new Date();
  day3ago.setDate(today.getDate() - 3);
  var day4ago = new Date();
  day4ago.setDate(today.getDate() - 4);
  var day5ago = new Date();
  day5ago.setDate(today.getDate() - 5);
  var day6ago = new Date();
  day6ago.setDate(today.getDate() - 6);

  function showDate(date) {
    var showDate = (date.getMonth() + 1) + "/" + date.getDate();
    return showDate;
  }
  // document.getElementById("today").html(
  //   `${today.getMonth() + 1}` + "/" + `${today.getDate()}`
  // );

  console.log(today.getDate());
  console.log(showDate(today));

  // Add data
  chart.data = [{
    //   "date": "USA",
    //   "study_time": 3025
    // }, {
    //   "date": "China",
    //   "study_time": 1882
    // }, {
    //   "date": "Japan",
    //   "study_time": 1809
    // }, {
    //   "date": "Germany",
    //   "study_time": 1322
    // }, {
    //   "date": "UK",
    //   "study_time": 1122
    // }, {
    "date": showDate(day6ago),
    "study_time": 14
  }, {
    "date": showDate(day5ago),
    "study_time": 10
  }, {
    "date": showDate(day4ago),
    "study_time": 5
  }, {
    "date": showDate(day3ago),
    "study_time": 1
  }, {
    "date": showDate(day2ago),
    "study_time": 5
  }, {
    "date": showDate(day1ago),
    "study_time": 6
  }, {
    "date": showDate(today),
    "study_time": 12
  }];

  // Create axes
  var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
  categoryAxis.dataFields.category = "date";
  categoryAxis.renderer.grid.template.location = 0;
  categoryAxis.renderer.minGridDistance = 30;
  categoryAxis.renderer.labels.template.horizontalCenter = "right";
  categoryAxis.renderer.labels.template.verticalCenter = "middle";
  categoryAxis.renderer.labels.template.rotation = 270;
  categoryAxis.tooltip.disabled = true;
  categoryAxis.renderer.minHeight = 110;

  var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
  valueAxis.renderer.minWidth = 50;

  // Create series
  var series = chart.series.push(new am4charts.ColumnSeries());
  series.sequencedInterpolation = true;
  series.dataFields.valueY = "study_time";
  series.dataFields.categoryX = "date";
  series.tooltipText = "[{categoryX}: bold]{valueY}[/]";
  series.columns.template.strokeWidth = 0;

  series.tooltip.pointerOrientation = "vertical";

  series.columns.template.column.cornerRadiusTopLeft = 10;
  series.columns.template.column.cornerRadiusTopRight = 10;
  series.columns.template.column.fillOpacity = 0.8;

  // on hover, make corner radiuses bigger
  var hoverState = series.columns.template.column.states.create("hover");
  hoverState.properties.cornerRadiusTopLeft = 0;
  hoverState.properties.cornerRadiusTopRight = 0;
  hoverState.properties.fillOpacity = 1;

  series.columns.template.adapter.add("fill", function (fill, target) {
    return chart.colors.getIndex(target.dataItem.index);
  });

  // Cursor
  chart.cursor = new am4charts.XYCursor();

}); // end am4core.ready()
