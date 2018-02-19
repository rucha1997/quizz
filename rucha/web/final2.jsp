<%-- 
    Document   : final2
    Created on : 8 Feb, 2018, 2:11:46 PM
    Author     : Rucha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link rel="stylesheet" type="text/css" href="animate.css">    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script>
 function m()
{ 
      
    $.ajax({
        url:'Final',
        type:"post",
        datatype:"text",
        data:{      
           
        },
        success:function(responseText)
        {
          alert(responseText);
        }
    })
   
   
}

function tp()
{
    document.getElementById("marks").innerHTML="6";
}

</script>

 
</head>

    <body>
    <center>
        <h2 class="animated bounceInDown" id="marks"> Your marks are</h2>
        <button type="button" onclick="m()">marks</button>
    </center>
    </body>

</html>
