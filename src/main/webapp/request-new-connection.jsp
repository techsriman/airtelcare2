<!DOCTYPE html>
<%@page isELIgnored="false"%>
<html>
  <head>
    <title>New DTH Connection Request</title>
    <style>
	    body {
               font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            }
            h2 {
                text-align: center;
            }
            .inputForm {
                border-radius: 5px;
                background-color: aquamarine;
                padding: 20px;
                width: 50%;
                margin: auto;
            }
            input[type=text], select, input[type=password], input[type=email] {
                width: 100%;
                padding: 5px 8px;
                box-sizing: border-box;
                border-radius: 3px;
                border: 1px solid black;
                display: inline-block;
                margin: 10px 0px;
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            }
            input[type=submit] {
                width: 100%;
                color: aliceblue;
                background-color: brown;
                border-radius: 5px;
                border: none;
                padding: 8px 20px;
                margin: 8px 0px;
            }
            input[type=submit]:hover {
                background-color: crimson;
            }
    </style>
  </head>
  <body>
    <h2>DTH Connection Enquiry</h2>
    <div class="inputForm">
      <form method="post" action="${pageContext.request.contextPath}/dthRequest">
      	<label for="name">Name</label>
      	<input type="text" name="name" id="name"/>
      	<label for="contactNo">Contact No</label>
      	<input type="text" name="contactNo" id="contactNo"/>
      	<label for="emailAddress">Email Address</label>
      	<input type="email" name="emailAddress" id="emailAddress"/>
      	<label for="city">City</label>
      	<input type="text" name="city" id="city"/>      	
      	<label for="state">State</label>
      	<input type="text" name="state" id="state"/>      	
      	<label for="pincode">Pincode</label>
      	<input type="text" name="pincode" id="pincode"/>      	     
      	
      	<p>Looking for Connection?</p>
     	<label for="sd">SD</label>
      	<input type="radio" name="connectionType" id="sd" value="sd"/>     
      	
	<label for="hd">HD</label>
      	<input type="radio" name="connectionType" id="hd" value="hd"/>	
      	<input type="submit" value="place"/>
      </form>
    </div>
  </body>
</html>
