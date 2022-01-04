// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DBConn.java

package database;
import com.mysql.jdbc.Driver;
import java.io.PrintStream;
import java.sql.*;

public class DBConn
{
    static Connection con = null;
    static ResultSet rs = null;
    static Statement st = null;
    static PreparedStatement pstmt = null;
    public DBConn()
    {
    }
    public static Connection getConnection()
        throws Exception
    {
        try
        {

            System.out.println("in con");
            //Class.forName("com.mysql.cj.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            String connectionURL = "jdbc:mysql://localhost:3306/insurancedb";
            con = DriverManager.getConnection(connectionURL,"root","root");
            System.out.println("DataBase connection succesfully..!!");
        }
        catch(Exception e)
        {
            e.printStackTrace();
            System.out.println("in con_excepion");
        }
        System.out.println("get con");
        return con;
    }

    public static ResultSet executeQuery(String s)
    {
        try
        {
            st = con.createStatement();
            rs = st.executeQuery(s);
            System.out.println("in st");
        }
        catch(Exception e)
        {
            e.printStackTrace();
            System.out.println("in st exp");
        }
        return rs;
    }

    public static void executeUpdate(String s)
    {
        try
        {
            st = con.createStatement();
            st.executeUpdate(s);
            System.out.println("in st execupdate");
        }
        catch(Exception e)
        {
            e.printStackTrace();
            System.out.println("in st exp");
        }
    }

    public static PreparedStatement prepareStatement(String s)
    {
        try
        {
            pstmt = con.prepareStatement(s);
            System.out.println((new StringBuilder("in pstmt")).append(pstmt).toString());
        }
        catch(Exception e)
        {
            System.out.println("in db pstmt excep");
            e.printStackTrace();
            System.out.println("in pstmt exception");
        }
        return pstmt;
    }

    public static int delete(String s)
    {
        int n = 0;
        try
        {
            st = con.createStatement();
            n = st.executeUpdate(s);
            System.out.println("in pstmt ");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return n;
    }

    public static void close()
        throws Exception
    {
        pstmt.close();
        rs.close();
        st.close();
        con.close();
    }
}
