 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 <style>
body{
 	background-image: url('C:\\Users\\shubh\\OneDrive\\Desktop\\Project Snaps\\emp_back1.jpg');
		background-repeat: no-repeat;
 		background-attachment: fixed;
		background-size: cover;
 }
  table{
  	background-color: rgba(0, 0, 0, 0.81);
	border:none;
	padding:10px;
	border-radius:10px;
	margin-top: 80px;
	font-size:100%;
	width:300px;
	color:#ffffff;
  }  
  tr,td{
	padding: 30px;

}
th{
	color:rgba(255, 87, 51, 0.81);
	font-size: 20px;
}
  h1{
  	background-color: rgba(0, 0, 0, 0.81);
	color: #ffffff;
	margin:50px;
	border-radius: 5px;
	font-family:courier;
  }
  a{
	background-color: rgba(255, 255, 255, 0.81);
	color: #000000;
	border-radius: 5px;
	font-family:courier;
	text-decoration:none;
	padding:5px;
	font-size: 15px;
}
  </style>
  <center>
<h1>Employees List</h1>  
<table >  
<tr><th>Id</th><th>Name</th><th>Salary</th><th>Designation</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="emp" items="${list}">   
   <tr>  
   <td>${emp.emp_Id}</td>  
   <td>${emp.emp_Name}</td>  
   <td>${emp.emp_Salary}</td>  
   <td>${emp.emp_Designation}</td>  
   <td><a href="edit_emp/${emp.emp_Id}">Edit</a></td>  
   <td><a href="delete_emp/${emp.emp_Id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="employee">Add New Employee</a>  
   </center>