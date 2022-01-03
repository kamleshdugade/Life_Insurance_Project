<%@ page  import="java.sql.*,database.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
<body bgcolor="#A3A3D1">
<%

int id=Integer.parseInt(request.getParameter("bid").trim());
//con=DBConn.getConnection();
int s=DBConn.delete("delete from branch where branchid="+id);
if(s==1)
{
  out.println("<center><h1><b><i>Successfully Branch Deleted :  BranchID: "+ id +" </i></b></h1></center>");
  }
  else
  {
     out.println("<center><h1><b><i>UnSuccessful Branch Deletion:  BranchID: "+ id+" </i></b></h1></center>");
	 }
	 %>
<br>

</body>
</html>
