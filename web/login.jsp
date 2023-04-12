<%-- 
    Document   : login
    Created on : Mar 7, 2022, 1:48:28 PM
    Author     : dangk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>WELCOME TO VEGETABLE MARKET</h1>
        <hr/>
        <h1>Input your information: </h1>
        <form action="MainController" method="POST" id="form" >
            User ID<input type="text" name="userID" required=""/></br>
            Password<input type="password" name="password" required=""/></br>
            <div class="g-recaptcha" data-sitekey="6Le4LsoeAAAAAPnsPCJP6VHYEZRqHn3KT8GF6OEx"></div>
            <div id="error"></div>
            <input   value="Login" name="action" hidden=""/>
            <input type="submit" value="Submit" />
            <input type="reset" value="Reset" />
        </form>
        
        
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script>
			window.onload = function (){
				let isValid = false;
				const form = document.getElementById("form");
				const error = document.getElementById("error");
				
				form.addEventListener("submit", function (event){
					event.preventDefault();
					const response = grecaptcha.getResponse();
					if (response){
						form.submit();
					} else {
						error.innerHTML = "Please check";
					}
				});
			}
		</script>    

                
            <%
            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>      
       
     <%= error %>
     
     
   
    </body>
</html>
