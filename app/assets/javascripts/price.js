$(function(){
  $("#input__price").on("input", function(){
    var data = $("#input__price").val();
    var profit = Math.round(data * 0.9)
    var fee = (data - profit)
    $("#output").html(fee)
    $("#output").prepend("¥")
    $("#output2").html(profit)
    $("#output2").prepend("¥")
    $("#price").val(profit)
    if(profit == "") {
      $("#output2").html("");
      $("#output").html("");
    }
  })
})