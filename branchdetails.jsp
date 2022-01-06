<%@ page import="java.sql.*,database.*" errorPage="" %>
<html>
<head>
<title>Life Insurance</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#A3A3D1">
<form name="form1" method="post" action="">
  <%! Connection con;
ResultSet rs;
    Statement st = null;
%>
  <%
java.util.Date d=new java.util.Date();
java.sql.Date d2=new java.sql.Date(d.getYear(),d.getMonth(),d.getDate());
System.out.println("sys date is"+d2);

//con=DBConn.getConnection();

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/InsuranceDb","root","root");
    System.out.println("Inside policies details");
    st = con.createStatement();
rs=st.executeQuery("select * from  branch order by id asc");

%>
  <p align="center"><strong><font color="#CC33CC" size="5"><em><font color="#66FF66">BRANCH 
    DETAILS</font></em></font></strong></p>
  <p><font color="#66FF66"><strong><em> Date:</em></strong> 
    <input name="bdate" type="text" id="bdate" value="<%=d2%>" readonly>
    </font> </p>
  <div align="left"></div>
  <table width="900" height="59" border="2" cellpadding="3">
    <tr> 
      <td width="111"><div align="center"><strong><em>BRANCH ID</em></strong></div></td>
      <td width="140"><div align="center"><strong><em>BRANCH NAME</em></strong></div></td>
      <td width="140"><div align="center"><strong><em>LOCATION</em></strong></div></td>
      <td width="140"><div align="center"><strong><em>BRANCH REGDATE</em></strong></div></td>
      <td width="110"><div align="center"><strong><em>PHONE NO</em></strong></div></td>&nbsp;
      <td width="137"><div align="center"><strong><em>STATE</em></strong></div></td>
    </tr>
  </table>
  <table width="857" border="0" cellpadding="3">
    <%
while(rs.next())
{ %>
    <tr> 
      <td width="141" height="31"><%=rs.getInt(1)%><div align="center"></div></td>
      <td width="147"><%=rs.getString(2)%> <div align="center"></div></td>
      <td width="138"><%=rs.getString(3)%> <div align="center"></div></td>
      <td width="150"><%=rs.getDate(4)%> <div align="center"></div></td>
      <td width="110"><%=rs.getString(5)%> <div align="center"></div></td>
      <td width="126"><%=rs.getString(6)%> <div align="center"></div></td>
    </tr>
    <% }%>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
