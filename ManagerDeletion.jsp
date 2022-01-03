<%@ page  import="java.sql.*,database.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<%!  Connection con;
ResultSet rs;
%>

<body bgcolor="#A3A3D1">
<%
int id=Integer.parseInt(request.getParameter("bid").trim());
con=DBConn.getConnection();
int s=DBConn.delete("delete from branchmgr where branchmgrid="+id);
int l=DBConn.delete("delete from login where userid="+id);

if(s==1 && l==1)
{
  out.println("<center><h1><b><i>Successfully Branch Manager Deleted :  Branch ManagerID: "+ id +" </i></b></h1></center>");
  }
  else
  {
     out.println("<center><h1><b><i>UnSuccessful Branch Manager Deletion:  Branch ManagaerID: "+ id+" </i></b></h1></center>");
	 }
	 %>
</body>
</html>
