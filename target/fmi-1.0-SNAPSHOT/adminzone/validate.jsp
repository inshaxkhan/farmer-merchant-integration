<%-- 
    Document   : validate
    Created on : 20 Sep, 2023, 11:09:59 AM
    Author     : inshaxkhan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>

<% 
    String ano=request.getParameter("ano");
    DbManager dm=new DbManager();
    String query="select * from booking where aadharno='"+ano+"'";
    ResultSet rs=dm.select(query);
    if(rs.next())
    {
      out.print("<script> alert('Booking is Already Done!'); window.location.href='booking.jsp'; </script>");
    }
    else
    {
        session.setAttribute("ano", ano);
        response.sendRedirect("book.jsp");
    }
%>
