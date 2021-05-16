<%@page import="model.AdminSchedule"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>View Schedule</title>


    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-lava.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">
    
</head>
<body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <!-- ***** Preloader End ***** -->


    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="index.html" class="logo">
                           AUS
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="#welcome" class="menu-item">Home</a></li>
                            <li class="scroll-to-section"><a href="#book" class="menu-item">Book</a></li>
                            <li class="scroll-to-section"><a href="#faq" class="menu-item">FAQ</a>
                            </li>
                            <li class="scroll-to-section"><a href="#contact-us" class="menu-item">Contact Us</a></li>
								<li class="submenu">
                                <a href="javascript:;"><i class="fa fa-user-circle"></i></a>
                                <ul>
                                    <li><a href="ViewProfile.html" >View Profile</a></li>
                             
                                    <li><a href="index.html">Sign out</a></li>
  
                                </ul>
                            </li>
                                                    </ul>
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->
<div class ="table">
	<table id="myTable" class="table" data-page-length="25"
		data-order="[[ 1, &quot;asc&quot; ]]">

		<thead>
					<h2>Display a Session
	</h2>
			<tr style="background-color: rgb(164, 62, 46)">
				<th>Booking ID</th>
				<th>CRN</th>
				<th>User ID</th>
				<th>Reservation Owner</th>
				<th>Owner Type</th>
				<th>Room Name</th>	
				<th>Date</th>
				<th>FROM</th>	
				<th>TO </th>
				<th>Nature of Booking </th>					
			</tr>
		</thead>
		<tbody>
			<%List<AdminSchedule> list =  (List<AdminSchedule>)request.getAttribute("list"); 
        for(AdminSchedule s:list){%>
			<%-- Arranging data in tabular form 
        --%>
			<tr>
				<td><%=s.getBooking_ID()%></td>
				<td><%=s.getCourse_code()%></td>
				<td><%=s.getUser_ID()%></td>
				<td><%=s.getUser_Name()%></td>
				<td><%=s.getUserType()%></td>
				<td><%=s.getRoom_ID()%></td>
				<td><%=s.getDate()%></td>	
				<td><%=s.getStart()%></td>	
				<td><%=s.getEnd()%></td>	
				<td><%=s.getRoomType()%></td>	
			</tr>
			<%}%>
		</tbody>
	</table>
</div>
 <div class="right-image-decor"></div>
<!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script>

    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>
</body>
</html>