<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.net.*,java.io.*"%>  
 <%@ page import="request.Curl" %>
 
<% 

//out.println("Ikram : getting access token on server");

String access_token = "b240fe68007a1c01b5f6da3e22f4d664cc9d57186fc39ce6a248174356cd";
String client_id = "e56693ca9d2c248f275d";
String client_secret = "e2fc71d1d58679cc27b4f46ae6b4f2399519e9fdc8c99253531e186bd17b";
String code = request.getParameter("code");

code="4be18766d47d4d60bfe9";
Curl curl = new Curl();

access_token = (curl.testWunderlistAuthentication(code, client_id, client_secret));



%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Time tracker</title>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  	<link rel="stylesheet" href="css/timetracker.css">
  	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  	<script src="js/timetrackingEvents.js"></script>
  	<script src="js/wunderlistapi.js"></script>

	 <script>
	  $(function() {

		  var access_token = 'b240fe68007a1c01b5f6da3e22f4d664cc9d57186fc39ce6a248174356cd';
	      var client_id = 'e56693ca9d2c248f275d';
	      var client_secret = 'e2fc71d1d58679cc27b4f46ae6b4f2399519e9fdc8c99253531e186bd17b';
	      var code = '<%= request.getParameter("code") %>';

	      code="4be18766d47d4d60bfe9";
	      
	      init(access_token, client_id);
	      
	      
	      
	      //loadLists("");
	      
	      
		
    	    
    	    
    	    
    	 
    	    
    	    
	  });

		
	</script>
</head>
 <body>
      <div class="wrapper blue">
		<div class="header red">
			<div class="left-header float-left yellow">
				<div id="wrap">
				  <form action="" autocomplete="on">
				  <input id="search" name="search" type="text" placeholder="Search list"><input id="search_submit" value="Rechercher" type="submit">
				  </form>
				</div>
			</div>
			<div class="right-header float-left orange">
				<div class="heading float-left blue">
					<img src="<%=request.getContextPath()%>/images/logo.png" />
				</div>
				<div class="avatar float-left red">
					<img src="<%=request.getContextPath()%>/images/avatar.png" />
				</div>
			</div>
		</div>
		<div class="content green">
			<div class="left-content float-left orange">
				<div class="list-data">
					<div class="lists">
					  <h2>User's lists</h2>
					  <ul>
					    <li><a href="#">Zurich</a></li>
					    <li><a href="#">Geneva</a></li>
					    <li><a href="#">Winterthur</a></li>
					    <li><a href="#">Lausanne</a></li>
					    <li><a href="#">Lucerne</a></li>
					  </ul>
					</div>
				</div>
				<div class="create-list">
					<input type="text" placeholder="Create list"></input>
					<button id="create-list" value="create">create</button>
				</div>
			</div>
			<div class="right-content float-left yellow">
				<div class="create-task">
					<input type="text" placeholder="Create task"></input>
					<button id="create-task" value="create">create</button>
				</div>
				<div id="accordion">
				  <!-- <h3>Task 1</h3>
				  <div>
				    <p>
				    	Information about task 1
				   </p>
				    <ul>
				      <li>Task initiated by : Manager </li>
				      <li>Task start time : 15:00, 21.02.2015</li>
				      <li>Task status : active</li>
				    </ul>
				    <div>
				    	<input type="submit" value="Start">
				    	<input type="submit" value="Pause">
					<input type="submit" value="Finish">
				    </div>
				  </div>
				  <h3>Task 2</h3>
				  <div>
				    <p>
				    	Information about task 2
				   </p>
				    <ul>
				      <li>Task initiated by : user </li>
				      <li>Task start time : 15:00, 21.02.2015</li>
				      <li>Task status : active</li>
				    </ul>
				    <div>
				    	<input type="submit" value="Start">
				    	<input type="submit" value="Pause">
					<input type="submit" value="Finish">
				    </div>
				  </div>
				  <h3>Task 3</h3>
				  <div>
				    <p>
				    	Information about task 3
				   </p>
				    <ul>
				      <li>Task initiated by : Ikram </li>
				      <li>Task start time : 15:00, 21.02.2015</li>
				      <li>Task status : active</li>
				    </ul>
				    <div>
				    	<input type="submit" value="Start">
				    	<input type="submit" value="Pause">
					<input type="submit" value="Finish">
				    </div>
				  </div>
				  <h3>Task 4</h3>
				  <div>
				    <p>
				    	Information about task 4
				   </p>
				    <ul>
				      <li>Task initiated by : user </li>
				      <li>Task start time : 15:00, 21.02.2015</li>
				      <li>Task status : active</li>
				    </ul>
				    <div>
				    	<input type="submit" value="Start">
				    	<input type="submit" value="Pause">
					<input type="submit" value="Finish">
				    </div>
				  </div>
				  
				  <h3>Task 4</h3>
				  <div>
				    <p>
				    	Information about task 4
				   </p>
				    <ul>
				      <li>Task initiated by : user </li>
				      <li>Task start time : 15:00, 21.02.2015</li>
				      <li>Task status : active</li>
				    </ul>
				    <div>
				    	<input type="submit" value="Start">
				    	<input type="submit" value="Pause">
					<input type="submit" value="Finish">
				    </div>
				  </div>
				  
				  <h3>Task 4</h3>
				  <div>
				    <p>
				    	Information about task 4
				   </p>
				    <ul>
				      <li>Task initiated by : user </li>
				      <li>Task start time : 15:00, 21.02.2015</li>
				      <li>Task status : active</li>
				    </ul>
				    <div>
				    	<input type="submit" value="Start">
				    	<input type="submit" value="Pause">
					<input type="submit" value="Finish">
				    </div>
				  </div>
				  
				   -->
				</div>
			</div>
		</div>
		<div class="footer blue">
		</div>

		
      </div>
   </body>

<style>





</style>
</html>