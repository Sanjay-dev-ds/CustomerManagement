google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawTitleSubtitle);


 
function drawChart() {

 var x = document.getElementById("myText").value;
 var integer = parseInt(x, 10);
  var y = document.getElementById("myText2").value;
 var integer2 = parseInt(y, 10);
 var z = document.getElementById("myText3").value;
 var integer3 = parseInt(z, 10);
 
 
  var data = google.visualization.arrayToDataTable([
  
  
    ['City', 'customers'],
    ['colombo' ,    integer],
    ['Jafnna',  integer2    ],
    ['Baticalo', integer3]
   
  ]);

  var options = {
    title: 'Cities of the customer ', 'fontSize ' :'18' ,
    is3D: true,
    sliceVisibilityThreshold: .1,

    titleTextStyle: {
        
       
        fontSize: 20 , 
        bold: true,  
       
    }

  };



  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);



  //piechart2
var s = document.getElementById("myText4").value;
 var integer4 = parseInt(s, 10);
  var m = document.getElementById("myText5").value;
 var integer5 = parseInt(m, 10);

 




  var data2 = google.visualization.arrayToDataTable([
    ['Gender', 'customers'],
    ['Male',     integer4],
    ['Female',   integer5],
   
  ]);

  var options2 = {
    title: ' Customer Gender ', 'fontSize ' :'18' ,
    is3D: true,
    fontSize : 13,
    titleTextStyle: {
        
       
        fontSize: 20 , 
        bold: true,  
       
    }

  };



  var chart2 = new google.visualization.PieChart(document.getElementById('piechart2'));
  chart2.draw(data2, options2);

  
}
//barchart
var a = document.getElementById("myText6").value;
 var integer10 = parseInt(a, 10);
  var b = document.getElementById("myText7").value;
 var integer11 = parseInt(b, 10);
var c = document.getElementById("myText8").value;
 var integer12 = parseInt(c, 10);
  var d = document.getElementById("myText9").value;
 var integer13 = parseInt(d, 10);
 var e = document.getElementById("myText10").value;
 var integer14 = parseInt(e, 10);
  var f = document.getElementById("myText11").value;
 var integer15 = parseInt(f, 10);
 

 

function drawTitleSubtitle() {
  var data = google.visualization.arrayToDataTable([
    ['Age limit', 'Male', 'Female'],
    ['< 18', integer10 , integer11],
    ['18 - 30', integer12, integer13],
    ['> 30', integer14, integer15]
    
  ]);

  var materialOptions = {
 
    chart: {
      title: 'Customer analysis',
      subtitle: 'Based on gender and age',
     
    
    
      
    },
    hAxis: {
      title: 'Gender',
      minValue: 0,
    },
    vAxis: {
      title: 'City'
    },
    bars: 'horizontal'

    
    

  };
  var materialChart = new google.charts.Bar(document.getElementById('chart_div'));
  materialChart.draw(data, materialOptions);
}

$(function () {
 
  $("#rateYo").rateYo({
    rating: 10
    ($this).hide()
  });

  $("#rateYo1").rateYo({
    rating: 8
  });
  $("#rateYo2").rateYo({
    rating: 6
  });
  $("#rateYo3").rateYo({
    rating: 4
  });
  $("#rateYo4").rateYo({
    rating: 2
  });


 
});






	

 function RegisterValidate() {

  var Fname = document.Register.Fname.value;
  var Lname = document.Register.Lname.value;
  var Email = document.Register.Email.value;
  var Gender = document.Register.Gender.value;
   var pNumber  = document.Register.pNumber.value;
   var Age = document.Register.Age.value;
  var address = document.Register.address.value;
  var City = document.Register.City.value;
  var Province = document.Register.Province.value;
   var Postal  = document.Register.Postal.value;
  var ps = document.Register.ps.value;
   var Cps  = document.Register.Cps.value;

  let text = "<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-shield-fill-exclamation' viewBox='0 0 16 16'><path fill-rule='evenodd' d='M8 0c-.69 0-1.843.265-2.928.56-1.11.3-2.229.655-2.887.87a1.54 1.54 0 0 0-1.044 1.262c-.596 4.477.787 7.795 2.465 9.99a11.777 11.777 0 0 0 2.517 2.453c.386.273.744.482 1.048.625.28.132.581.24.829.24s.548-.108.829-.24a7.159 7.159 0 0 0 1.048-.625 11.775 11.775 0 0 0 2.517-2.453c1.678-2.195 3.061-5.513 2.465-9.99a1.541 1.541 0 0 0-1.044-1.263 62.467 62.467 0 0 0-2.887-.87C9.843.266 8.69 0 8 0zm-.55 8.502L7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0zM8.002 12a1 1 0 1 1 0-2 1 1 0 0 1 0 2z'/></svg>";


  if (Fname.length < 5  || Lname.length < 5   || Email.length < 5 ||  Gender == -1    || pNumber.length < 10    || Age < 10    || address.length < 5    || City.length < 5    || Province.length < 5     || Postal.length < 5 || !ps==Cps ) {
 
    
  if(Fname.length < 5  ) {
     
    
     document.getElementById("Txt1").innerHTML = text;
 
  }
  
  
   if(Lname.length < 5) {
     
     document.getElementById("Txt2").innerHTML = text;
 
  }
    
  if(Email.length < 5 ) {
     
     document.getElementById("Txt3").innerHTML = text;
 
  }
  if(  Gender == -1    ) {
     
     document.getElementById("Txt4").innerHTML = text;
 
  }
  if( pNumber.length < 10  ) {
     
     document.getElementById("Txt5").innerHTML = text;
 
  }
  if(Age < 10 ) {
     
     document.getElementById("Txt6").innerHTML = text;
 
  }
  if( address.length < 5   ) {
     
     document.getElementById("Txt7").innerHTML = text;
 
  }
   if( City.length < 10  ) {
     
     document.getElementById("Txt8").innerHTML = text;
 
  }
  
     
  if( Province.length < 5   ) {
     
     document.getElementById("Txt9").innerHTML = text;
 
  }
 
  
  if( Postal.length < 5  ) {
     
     document.getElementById("Txt10").innerHTML = text;
 
  }
  
   

  
   if( ps.length < 5  ) {
     
     document.getElementById("Txt11").innerHTML = text;
 
  }
  
 
  
   if( Cps.length < 5  ) {
     
     document.getElementById("Txt12").innerHTML = text;
 
  }
   
  
  if(Cps.length >5 && ps.length > 5){
   if( ps !== Cps  ) {
   text="Passwords are not matching";
     
     document.getElementById("Txt13").innerHTML = text;
     document.getElementById("Txt14").innerHTML = text;
     
  }
  }
  
      return false;
  
  }

  
  else {

     return true;
  }
 
}
  
  






