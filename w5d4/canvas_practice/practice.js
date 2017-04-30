document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('mycanvas');
  var ctx = canvas.getContext('2d');
    ctx.fillRect(0,0,500,500);
    ctx.fillStyle = "black";

    ctx.beginPath();
    ctx.arc(150,300,50,0,2 * Math.PI);
    ctx.lineWidth = 1;
    ctx.fillStyle = "white";
    ctx.fill();
    ctx.stroke();
});
