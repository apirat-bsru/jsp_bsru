
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    
     
 <% if((Integer)session.getAttribute("type")==1){%>
      <ul class="nav navbar-nav">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#" id="add_account">Add account</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li> 
        </ul>
      </li>
    </ul>
      <% } %>
      
      
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%= session.getAttribute("student_name") %></a></li>
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> ออกจากระบบ</a></li>
    </ul>
  </div>
</nav>