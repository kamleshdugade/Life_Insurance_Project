<%@ page import="java.sql.*, database.*" errorPage="" %>
<html>
<head>
<title>Life Insurance</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<p>&nbsp;</p>
<form name="form1" method="post" action="./BranchModify">
  <p>
<% Connection con;
ResultSet rs;
int branchid;

%>
    <%
java.util.Date d=new java.util.Date();
Date d2=new Date(d.getYear(),d.getMonth(),d.getDate());
System.out.println("sys date is"+d2);

branchid=Integer.parseInt(request.getParameter("bid").trim());

con=DBConn.getConnection();
rs=DBConn.executeQuery("select * from branch where branchid=" + branchid );
while(rs.next())
{

%>
  </p>
  <p align="center"><strong><font color="#993399" size="7" face="Monotype Corsiva"><em>Branch 
    Modification</em></font></strong></p>
  <label>Date: 
  <input name="bdate" type="text" id="bdate" value="<%=d2%>" readonly="true"/>
  </label>
  <table width="291" border="3" align="center" cellpadding="3">
    <tr>
      <td width="190"><div align="center"><strong><font size="4"><em>Branch ID </em></font></strong></div></td>
      <td width="179"><input type="text" name="textfield" value="<%=branchid%>" readonly="true"/></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="539" border="3" align="center" cellpadding="2" cellspacing="2">
    <tr>
      <td width="96"> Branch Name</td>
      <td width="145"><input name="bname" type="text" id="bname2" value="<%=rs.getString(2)%>"></td>
      <td width="100">Location</td>
      <td width="158"><input name="location" type="text" id="location2" value="<%=rs.getString(2)%>"></td>
    </tr>
    <tr> 
      <td>Phone</td>
      <td><input name="phone" type="text" id="phone2" value="<%=rs.getString(2)%>"/></td>
      <td>State</td>
      <td><input name="state" type="text" id="state2" value="<%=rs.getString(2)%>"/></td>
    </tr>
  </table>
  <p>&nbsp; </p>
  <table width="249" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr> 
      <td width="123"><input type="submit" name="Submit" value="   Submit   "></td>
      <td width="112"><div align="center"> 
          <input type="reset" name="Submit2" value="   Reset   ">
        </div></td>
    </tr>
  </table>
  </form>
<p><em><strong><font color="#CC0099" size="7" face="Monotype Corsiva"></font></strong></em></p>
</body>
</html>
<% }%>