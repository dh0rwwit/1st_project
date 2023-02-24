<%@page import="com.smhrd.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��������</title>

		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/maicons.css">

		<link rel="stylesheet" href="../assets/css/bootstrap.css">
		
		<link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.css">
		
		<link rel="stylesheet" href="../assets/vendor/animate/animate.css">
		
		<link rel="stylesheet" href="../assets/css/theme.css">
		
</head>
	<body class="is-preload">
	
	<%
      UserVO vo = (UserVO)session.getAttribute("vo");
      %>
      
      
		<div id="page-wrapper">
		<div class="back-to-top"></div>

			<!-- Header -->
				<header>  
		
    <!-- .topbar -->
	    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
	      <div class="container">
	        <a class="navbar-brand" href="VaccineRL.html"><span class="text-primary">Yak</span>-Kok</a>
	
	       
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	
	        <div class="collapse navbar-collapse" id="navbarSupport">
	          <ul class="navbar-nav ml-auto">
	            <li class="nav-item">
	               <a class="nav-link" href="about.jsp">�����̶�?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../VaccineRL2.jsp">��ſ���/��ȸ</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="precaution.jsp">�������</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="faqForm.jsp">����/FAQ</a>
            </li>
           <%
                  if(vo == null){ //�α��� ��
                     out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' href='html/loginForm.html'>�α���/ȸ������</a></li>");
                  }else{
                     //������ �������� �α��� ���� ��� ��� ȸ������ �� �� �ֵ���
                     //�α����� ȸ���� �̸����� admin�� ��쿡�� ȸ����ü����� ���̰� 
                     //�α����� ȸ���� �̸����� �Ϲ� ȸ���� ��쿡�� ȸ������ ������ ���̰�
                     if(vo.getUser_id().equals("admin")){
                        out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' href = 'selectUser.jsp'>ȸ����ü���</a>");
                     }else{
                        out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='../Mypage.jsp'>����������</a>");
                     }
                     out.print("<li class='nav-item'><a class='btn btn-primary ml-lg-3' a href='../LogoutService'>�α׾ƿ�</a>");
                  }
                  

                  %>
	          </ul>
	        </div> <!-- .navbar-collapse -->
	      </div> <!-- .container -->
	    </nav>
	  </header>

	  <!-- ��� bar -->
	 
	<div class="page-banner overlay-dark bg-image" style="background-image: url(../assets/img/bg_image_1.jpg);">
    <div class="banner-section">
      <div class="container text-center wow fadeInUp">
        <nav aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
   
          </ol>
       
        </nav>
        <h1 class="font-weight-normal">�������</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->

			 
	

			<!-- Main -->
				  <div class="page-section pb-0">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 py-3 wow fadeInUp">
            <h1>���� ��/�� ���ǻ���</h1><br>
            <p class="text-grey mb-4">���������̶� ������ ��ȯ �߻��� ������ ���Ͽ� �̻����� �������� ���̰ų� ���ϰ� �Ͽ� ������� �����ϴ� ���Դϴ�.<br> 
            ���� ���������� �Ҿ� �� ���������� �����Ͽ�����, �������� ���� ȿ���� ���� ���ο��� �߰� ������ �ʿ��� �͵�� �Ҿƿ������ٴ� ���ο��� ���� ȿ���� �� ū �������� �� Ư�� ������ ��ȯ�� �߻� ������ ���� ����(�Ƿ��� ����)���� �ʿ��� ���������� �����մϴ�.
</p>
            
          </div>
          <div class="col-lg-6 wow fadeInRight" data-wow-delay="400ms">
            <div class="img-place custom-img-1">
              <img src="../assets/img/bg-doctor.png" alt="">
            </div>
          </div>
        </div>
      </div>
    </div> <!-- .bg-light -->
  </div> <!-- .bg-light -->
        <div class="page-section">
    <div class="container">
      <h1 class="text-center mb-5 wow fadeInUp">��� ������ Ư¡</h1>

      <div class="owl-carousel wow fadeInUp" id="doctorSlideshow">
        <div class="item">
          <div class="card-doctor">
          	 
            <div class="header">
            
              
               <div class= "text">
          		 <img src="../assets/img/doctors/flu.jpeg" alt="">
               
               </div>
            
                  <div class="meta" align="center" >
                  <span class = "text-light" style = "font-size :17px" >�ų� �����ϴ� ġ������ ����</span><br><br>
          		 
               <a class = "text-light" style = "font-size : 11px" >���� ����� ��������� �鿪���� ���� ����� ��� �������� �̸� �� �ִ� ������ ���Դϴ�.
               ����, ���ῡ�Ե� ���� ������ �����ϱ� ������ �ǰ��� ����� ������ �߿��մϴ�.</a>
                   
                  </div>
                </div>
           
                <div class="body" id = "Flu">
                  <p class="text-xl mb-0">����</p>
                  <span class="text-sm text-grey">Flu</span>
                </div>
              </div>
            </div>
            
             <div class="item">
          <div class="card-doctor">
            <div class="header">
               <div class= "text">
          		 <img src="../assets/img/doctors/var.jpg" alt="">
               </div>
                  <div class="meta" align="center" >
                  <span class = "text-light" style = "font-size :17px" >���� �������� 35% ���</span><br><br>
               <a class = "text-light" style = "font-size : 11px" >���� ��2�� ���������� �����Ǿ��ִ� ������, �������� �պ����� ���մϴ�.
               ���� ������ �߿�, ���� ���� �߻��մϴ�.</a>
                  </div>
                </div>
                <div class="body" id = "Var">
                  <p class="text-xl mb-0">����</p>
                  <span class="text-sm text-grey">Var</span>
                </div>
              </div>
            </div>
        
        
         <div class="item">
          <div class="card-doctor">
            <div class="header">
               <div class= "text">
          		 <img src="../assets/img/doctors/Hzv.jpeg" alt="">
               </div>
                  <div class="meta" align="center" >
                  <span class = "text-light" style = "font-size :17px" >���ο� �ɸ� ��� �� 30% �߻�</span><br><br>
               <a class = "text-light" style = "font-size : 11px" >���ο� ��������� ���� ���̷��� ��ȯ�̸�, ���� ���̷����� �����Ǹ� ���̷����� ��� ���ȿ� �����ϰ� �Ǹ� 50������ ������� �߻� �󵵰� �����մϴ�.
               ������ ������ �߻��մϴ�.</a>
                  </div>
                </div>
                <div class="body" id = "Hzv">
                  <p class="text-xl mb-0">�������</p>
                  <span class="text-sm text-grey">Hzv</span>
                </div>
              </div>
            </div>
        
        <div class="item">
          <div class="card-doctor">
            <div class="header">
               <div class= "text">
          		 <img src="../assets/img/doctors/Ppsv.jpg" alt="">
               </div>
                  <div class="meta" align="center" >
                  <span class = "text-light" style = "font-size :17px" >2019�� ������� 3��</span><br><br>
               <a class = "text-light" style = "font-size : 11px" >�� ���������� ħ���ϴ� ������ �����Դϴ�.
               ȣ�����, ����, ��ħ�� �߻��մϴ�.</a>
                  </div>
                </div>
                <div class="body" id = "ppsv">
                  <p class="text-xl mb-0">��ű���</p>
                  <span class="text-sm text-grey">PPSV</span>
                </div>
              </div>
            </div>
        
        <div class="item">
          <div class="card-doctor">
            <div class="header">
               <div class= "text">
          		 <img src="../assets/img/doctors/td.jpeg" alt="">
               </div>
                  <div class="meta" align="center" >
                  <span class = "text-light" style = "font-size :13px" >�鿪���� ���� ������ �ʴ� ����</span><br><br>
               <a class = "text-light" style = "font-size : 9px" >�鿪�� ��Ⱓ ���ӵ��� �����Ƿ� 3���� ������ �Բ� ���� ���� �帳�ϴ�.<br>
              �Ļ�ǳ : ���� ��� �� ȣ������ ����<br>
              �����׸��� : ȣ���� ��Ŵ�� ��������� ����<br>
              ������ : ��ħ�� �Բ� ���۰� ���� ����</a>
                  </div>
                </div>
                <div class="body" id = "Td">
                  <p class="text-sm mb-0">�Ļ�ǳ/�����׸���/������</p>
                  <span class="text-sm text-grey">Td</span>
                </div>
              </div>
            </div>
            
             <div class="item">
          <div class="card-doctor">
            <div class="header">
               <div class= "text">
          		 <img src="../assets/img/doctors/hepA.jpg" alt="">
               </div>
                  <div class="meta" align="center" >
                  <span class = "text-light" style = "font-size :17px" >ġ������ ���� ����ȯ</span><br><br>
               <a class = "text-light" style = "font-size : 11px" >������ ���� ���� ������ �ַ� ������ �˴ϴ�. <br>
               ��������, �Ƿΰ�, ���� ���� �߻��մϴ�.</a>
                  </div>
                </div>
                <div class="body" id = "hepA">
                  <p class="text-xl mb-0">A�� ����</p>
                  <span class="text-sm text-grey">hepA</span>
                </div>
              </div>
            </div>
            
   			 <div class="item">
          <div class="card-doctor">
            <div class="header">
               <div class= "text">
          		 <img src="../assets/img/doctors/hepB.jpg" alt="">
               </div>
                  <div class="meta" align="center" >
                  <span class = "text-light" style = "font-size :17px" >���� ȯ�� �� 86%</span><br><br>
               <a class = "text-light" style = "font-size : 11px" >��� �� ������ �ǰų� ������ ���� �� ü�׿� ���� �����˴ϴ�.<br>
               B�� ������ ���ӵǸ� ����ȭ���̳� �������� ����� �� �ֽ��ϴ�.</a>
                  </div>
                </div>
                <div class="body" id = "hepB">
                  <p class="text-xl mb-0">B�� ����</p>
                  <span class="text-sm text-grey">hepB</span>
                </div>
              </div>
            </div>
            
             <div class="item">
          <div class="card-doctor">
            <div class="header">
               <div class= "text">
          		 <img src="../assets/img/doctors/mcv4.jpeg" alt="">
               </div>
                  <div class="meta" align="center" >
                  <span class = "text-light" style = "font-size :17px" >�������� ����Ű�� ���� �޼� ������</span><br><br>
               <a class = "text-light" style = "font-size : 11px" >������ �����ϴ� ���� �������� ����,�߿�, ���ɵ��� �ް��� ���۵˴ϴ�.</a>
                  </div>
                </div>
                <div class="body" id = "mcv4">
                  <p class="text-xl mb-0">��������</p>
                  <span class="text-sm text-grey">mcv4</span>
                </div>
              </div>
            </div>
            
              <div class="item">
          <div class="card-doctor">
            <div class="header">
               <div class= "text">
          		 <img src="../assets/img/doctors/hib.jpeg" alt="">
               </div>
                  <div class="meta" align="center" >
                  <span class = "text-light" style = "font-size :17px" >������, �ĵΰ��� ��ȯ�� ���� ���α�</span><br><br>
               <a class = "text-light" style = "font-size : 11px" >�ַ� �Ҿƿ��� �߻��ϸ�, ��������, ���̿�, �κ񵿿�, �ĵΰ���, ����� �߿��� ���α��Դϴ�.</a>
                  </div>
                </div>
                <div class="body" id = "hib">
                  <p class="text-sm mb-0">B�� ����ʷ罺 ���÷翣��</p>
                  <span class="text-sm text-grey">hib</span>
                </div>
              </div>
            </div>
            
             <div class="item">
          <div class="card-doctor">
            <div class="header">
               <div class= "text">
          		 <img src="../assets/img/doctors/ipv.jpeg" alt="">
               </div>
                  <div class="meta" align="center" >
                  <span class = "text-light" style = "font-size :17px" >������ ���̷����� ���� ������ ��ȯ </span><br><br>
               <a class = "text-light" style = "font-size : 11px" >'�к�-�汸' �Ǵ� '�汸-�汸' ������ ���� ���ĵǸ� ������ ���Ĺ��� ���ؼ��� ���İ� �����մϴ�.</a>
                  </div>
                </div>
                <div class="body" id = "ipv">
                  <p class="text-sm mb-0">������</p>
                  <span class="text-sm text-grey">ipv</span>
                </div>
              </div>
            </div>
            
            
      <div class="page-section bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-4 py-3 wow zoomIn">
          <div class="card-service">
            <div class="circle-shape bg-secondary text-white">
              <span class="mai-chatbubbles-outline"></span>
            </div>
            <p><span>Chat</span> with a doctors</p>
          </div>
        </div>
        <div class="col-md-4 py-3 wow zoomIn">
          <div class="card-service">
            <div class="circle-shape bg-primary text-white">
              <span class="mai-shield-checkmark"></span>
            </div>
            <p><span>One</span>-Health Protection</p>
          </div>
        </div>
        <div class="col-md-4 py-3 wow zoomIn">
          <div class="card-service">
            <div class="circle-shape bg-accent text-white">
              <span class="mai-basket"></span>
            </div>
            <p><span>One</span>-Health Pharmacy</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  
  <script src="../assets/js/jquery-3.5.1.min.js"></script>

<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/js/theme.js"></script>

	</body>
</html>