<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <style>
  body{
 	background-image: url('C:\\Users\\shubh\\OneDrive\\Desktop\\Project Snaps\\emp_back.jpg');
		background-repeat: no-repeat;
 		background-attachment: fixed;
		background-size: cover;
 }
  table{
  	background-color: rgba(255, 87, 51, 0.81);
	border:none;
	padding:10px;
	border-radius:10px;
	margin-top: 80px;
	font-size:100%;
	width:300px;
  }
  h1{
  	background-color: rgba(0, 0, 0, 0.81);
	color: #ffffff;
	margin:50px;
	border-radius: 5px;
	font-family:courier;
  }
  input[type=submit]{
	background-color: rgba(0, 0, 0, 0.81);
  	border: none;
  	color: white;
  	padding: 5px;
  	text-decoration: none;
  	font-family:courier;
  	border-radius:5px;	
  	font-size: 11px;
}
tr{
	padding: 30px;
}
input{
	border:none;
	border-radius:5px;
}
a{
	background-color: rgba(0, 0, 0, 0.81);
	color: #ffffff;
	border-radius: 5px;
	font-family:courier;
	text-decoration:none;
	padding:5px;
	font-size: 11px;
}
  </style>
  <center>
        <h1>Edit Employee</h1>  
       <form:form method="POST" action="Employee_Management/edit_save_emp">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="emp_Id" /></td>  
         </tr>   
         <tr>    
          <td>Name : </td>   
          <td><form:input path="emp_Name"  /></td>  
         </tr>    
         <tr>    
          <td>Salary :</td>    
          <td><form:input path="emp_Salary" /></td>  
         </tr>   
         <tr>    
          <td>Designation :</td>    
          <td><form:input path="emp_Designation" /></td>  
         </tr>   
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form> 
       </center> 