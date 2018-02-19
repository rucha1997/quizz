<%-- 
    Document   : finalscore
    Created on : 8 Feb, 2018, 12:30:16 PM
    Author     : Rucha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Final result</title>
        <link rel="stylesheet" type="text/css" href="finalresult.css">
        <link rel="stylesheet" type="text/css" href="animate.css">
        <script>
        var byline = document.getElementById('byline');     // Find the H2
bylineText = byline.innerHTML;                                      // Get the content of the H2
bylineArr = bylineText.split('');                                   // Split content into array
byline.innerHTML = '';                                                      // Empty current content

var span;                   // Create variables to create elements
var letter;

for(i=0;i<bylineArr.length;i++){                                    // Loop for every letter
  span = document.createElement("span");                    // Create a <span> element
  letter = document.createTextNode(bylineArr[i]);   // Create the letter
  if(bylineArr[i] == ' ') {                                             // If the letter is a space...
    byline.appendChild(letter);                 // ...Add the space without a span
  } else {
        span.appendChild(letter);                       // Add the letter to the span
    byline.appendChild(span);                   // Add the span to the h2
  }
}

function t()
{
    document.getElementsByName("score").innerHTML("hi");
}
</script>
    </head>
    <body>
        
        <div class="starwars-demo">
             <h2 class="wars byline" id="byline" name="score">Your score is</h2>
             <p><p></p></p>
        <%--<img src="number.gif" alt="hi" class="star">--%>
        <br><br>
        <button type="button" class="star animated fadeIn" onclick="t()">1</button>
        
    </div>
    </body>
</html>
