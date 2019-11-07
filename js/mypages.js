// 今日の日付取得
window.onload = function () {
  var today = new Date();
  console.log(today);

  console.log("月=" + (today.getMonth() + 1));
  console.log("日=" + today.getDate());

  document.getElementById("today").html(
    `${today.getMonth() + 1}` + "/" + `${today.getDate()}`
  );

}