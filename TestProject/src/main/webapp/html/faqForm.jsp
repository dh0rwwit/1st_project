<%@page import="com.smhrd.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script>document.getElementsByTagName("html")[0].className += " js";</script>
  <link rel="stylesheet" href="../assets/css/style.css">
  <link rel="stylesheet" href="../assets_faq/css/style0.css">

<link rel="stylesheet" type="text/css" href="../assets/css/faq.css">

<link rel="stylesheet" href="../assets/css/maicons.css">

<link rel="stylesheet" href="../assets/css/bootstrap.css">

<link rel="stylesheet" href="../assets/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="../assets/vendor/animate/animate.css">

<link rel="stylesheet" href="../assets/css/theme.css">

<script type="text/javascript" src="../assets/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript" src="../assets/js/jquery-3.6.0.min.js"></script>

</head>
<body>
<%
      UserVO vo = (UserVO)session.getAttribute("vo");
      %>
<div class="back-to-top"></div>

	<header>  
		
    <!-- .topbar -->
	    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
	      <div class="container">
	        <a class="navbar-brand" href="../VaccineRL2.jsp"><span class="text-primary">Yak</span>-Kok</a>
	
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupport" aria-controls="navbarSupport" aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	
	        <div class="collapse navbar-collapse" id="navbarSupport">
	          <ul class="navbar-nav ml-auto">
	            <li class="nav-item">
	              <a class="nav-link" href="about.jsp">�����̶�</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="../VaccineRL2.jsp">��ſ���/��ȸ</a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="precaution.jsp">�������</a>
	            </li>
	            <li class="nav-item active">
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
            <li class="breadcrumb-item"><a href="AD_FAQ.jsp" name="Goods">Goods</a></li>
            
            <li class="breadcrumb-item"><a href="faqForm.jsp" name="FAQ"> FAQ </a></li>
          </ol>
        </nav>
        <h1 class="font-weight-normal" style="color:white">FAQs</h1>
      </div> <!-- .container -->
    </div> <!-- .banner-section -->
  </div> <!-- .page-banner -->


  
  <section class="cd-faq js-cd-faq container max-width-lg margin-top-lg margin-bottom-lg">
	<ul class="cd-faq__categories">
		<li><a class="cd-faq__category cd-faq__category-selected truncate" href="#basics">ȸ������</a></li>
		<li><a class="cd-faq__category truncate" href="#mobile">���༭��</a></li>
		<li><a class="cd-faq__category truncate" href="#account">�������</a></li>

	</ul> <!-- cd-faq__categories -->

	<div class="cd-faq__items">
		<ul id="basics" class="cd-faq__group">
			<li class="cd-faq__title"><h2>ȸ������</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>���̵� Ȥ�� ��й�ȣ�� ��ﳪ�� �ʾƿ�.</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>�α��� â �ϴ� "���̵�/��й�ȣã��"���� ��й�ȣ�� �缳���� �� �ֽ��ϴ�.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>ȸ�������� ��� �ϳ���?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>���� ���������� ���� [ȸ������] �� ���� �����մϴ�.  <br>
            	������ ȸ�������� �����̸�, ���԰� ���ÿ� ��� ȸ�� ���񽺸� �̿��Ͻ� �� �ֽ��ϴ�.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			

		</ul> <!-- cd-faq__group -->

		<ul id="mobile" class="cd-faq__group">
			<li class="cd-faq__title"><h2>���༭��</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>���������� �����ϰ� ������ ��� �ؾ��ϳ���?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
          <p>��� ������ ���������� �� [��ſ���/��ȸ] ���� ���� ��ȸ �� �������� ��ȭ�� ������ �����մϴ�.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>�ָ��̳� ���Ͽ� ��������� �����Ѱ���?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>�������� �����ð��� �����ϴ� ���� ���� �� ���� �����ð��� Ȯ�����ּ���.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			
		</ul> <!-- cd-faq__group -->

		<ul id="account" class="cd-faq__group">
			<li class="cd-faq__title"><h2>�������</h2></li>
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>������ ��ſ� ���� �˰��;��</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
          <p>���������� [�������]���� ���� �� ���ǻ��װ� ��ź� ������ Ȯ���ϼ���. </p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>� ����� �¾ƾ��ϴ��� �ñ��ؿ�</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>ȸ�����Խ� �Է��� ���̿� ������ ���� ���ۿ��� ����� ��õ�ص帳�ϴ�! �α��� �� ���������� [��Ÿ���Ʈ]�� Ȯ���ϼ��� </p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>���������� �� �ؾ� �ϳ���?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>��ȸ�� �Ÿ��α�, ����ũ ���� ���� ���̷����� ������ �ٿ� ������ �����ϴ� �ݸ�, ���������� �츮 ���� ���̷����� �����ϴ� �鿪���� �淯 ������ �����մϴ�. ���������� ���� ���������� ���÷翣�� �������� ������ �� �ֽ��ϴ�. �� ���ư� �츮���� �α� �� ���� ���� �̻��� ������ ��� ���ܸ鿪�� �����Ͽ� ��Ը� ���������� ������ �� �ֽ��ϴ�.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>

			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>���÷翣�� �������� �� ��Ÿ�� �� �ִ� �̻������ ������ �ֳ���?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p> - ���÷翣�� �������� �� ���� ���� �̻������ ����� �������� ����� 15��20%���� ��Ÿ���� ���� ���� ������ ������ ������, ��κ� 1��2�� �̳��� ������ϴ�.</p>
            <p>- ���Ź������� �߿�, ���°�, ������, ���� ���� ������ 1% �̸����� ��Ÿ�� �� ������ ���� ��� ���� �� 6��12�ð� �̳��� �߻��Ͽ� 1��2�� �� ���ӵ˴ϴ�. �幰�� �ε巯��, ��������, �Ƴ��ʶ��ý� ���� �˷���������� ��Ÿ�� ���� ������, �̻������ ���ӵǰų� �� �� ������ ��Ÿ���� �ǻ��� ���Ḧ �����ñ� �ٶ��ϴ�.</p>
          </div>
				</div> <!-- cd-faq__content -->
			</li>
			
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>���Ǽ� ��Ű� ���ǿ� ��ſ� ���̰� �ֳ���?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p> �ƴϿ�, ���Ǽҿ� ���ǿ����� ����ϴ� ����� ���̰� �����ϴ�. <br><br>
�� �� ��ź��� �����翡 ���� ���� ������ ����� ����ǰ� �ֽ��ϴ�. ���Ǽҿ� ���ǿ����� ����ϴ� ��ſ� ���̰� �ִ� ���� �ƴϳ� ���Ǽҳ� ���ǿ����� ��� ������ ����� �����ϰ� ������ �ʽ��ϴ�. DTaP�� ���� ���������� ������� ���������� �ؾ� �ϴ� ��쿡�� ���� ���� �� �湮�� ��������� ������ ������ ��Ű� ���������� ����� �����Ǿ� �ִ����� Ȯ���� �� �湮�ϵ��� �մϴ�.</p>

          </div>
				</div> <!-- cd-faq__content -->
			</li>
			
			<li class="cd-faq__item">
				<a class="cd-faq__trigger" href="#0"><span>�ӽ� �Ⱓ ���ȿ� ���÷翣�� ���������� �ص� ����������?</span></a>
				<div class="cd-faq__content">
          <div class="text-component">
            <p>- ���� �ǰ��մϴ�. �ӽźδ� �ӽ� �ּ��� ������� ��Ȱ��ȭ ��� ������ �����ϸ� ��� �� ���� ���� �߿��� ���� �����մϴ�.<br><br>
             - �ӽźΰ� ���÷翣�ڿ� ������ ��� �Ϲ��ο� ���� �պ��� ������ ũ��, �ӽ� �� ���� �� ��ü�� �¹��� ���� �¾ƿ��Է� ���޵Ǿ� ���������� ���� �� ���� 6���� �̸��� ��̿��Ե� ��ȣȿ���� �־� �ӽź� ���������� ���� �ǰ��մϴ�.<br><br>
             - �ٸ�, ���÷翣�� ���������������� ����� �ӽźη� ��� �Ŀ��� ��������� �Ұ��մϴ�.
             </p>

          </div>
				</div> <!-- cd-faq__content -->
			</li>
		</ul> <!-- cd-faq__group -->

		

		
		
	</div> <!-- cd-faq__items -->

	<a href="#0" class="cd-faq__close-panel text-replace">Close</a>
  
  <div class="cd-faq__overlay" aria-hidden="true"></div>
</section> <!-- cd-faq -->
  
  
  <!-- ������� -->
  
  <div class="page-section">
    <div class="container"> 

        <!-- 1,2,3,4 ... ��ư -->
             <div class="col-12 my-5">
              <nav aria-label="Page Navigation">
                <ul class="pagination justify-content-center">
                
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                  </li>
                  <li class="page-item active" aria-current="page">
                  <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="page-item"> <a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                  </li>
                </ul>
              </nav>
            </div>
        <!-- ������� -->
        
      </div> <!-- .row -->
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <div class="page-section banner-home bg-image" style="background-image: url(../assets/img/banner-pattern.svg)";>
  </div> <!-- .banner-home -->

<footer class="page-footer">
    <div class="container">
      <div class="row px-md-3">
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Company</h5>
          <ul class="footer-menu">
            <li><a href="../VaccineRL2.jsp">�����̶�?</a></li>
            <li><a href="../VaccineRL2.jsp">Our Developers</a></li>

          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Vaccine</h5>
          <ul class="footer-menu">
            <li><a href="../VaccineRL2.jsp">��� ����/��ȸ</a></li>
         	 <li><a href="Precaution.html">���� �� ���ǻ���</a></li>
            <li><a href="Precaution.html">��� ����</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>My Page</h5>
          <ul class="footer-menu">
            <li><a href="../Mypage.jsp">�� ����</a></li>
            <li><a href="../Mypage.jsp">���� ����</a></li>
            <li><a href="../Mypage.jsp">�ּ� ����</a></li>
          </ul>
        </div>
        <div class="col-sm-6 col-lg-3 py-3">
          <h5>Contact</h5>
          <p class="footer-link mt-2">���ֱ����� ���� �۾Ϸ�60 ����CGI���� 2��</p>
          <a href="#" class="footer-link">062-655-3509</a>
          <a href="#" class="footer-link">Yak-kok@gmail.net</a>

          
        </div>
      </div>

      <hr>

      <p id="copyright">Copyright &copy; 2020 <a href="https://macodeid.com/" target="_blank">MACode ID</a>. All right reserved</p>
    </div>
    
  </footer>

<script src="../assets/js/jquery-3.5.1.min.js"></script>

<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/js/theme.js"></script>

<script src="../assets_faq/js/util.js"></script> <!-- util functions included in the CodyHouse framework -->
<script src="../assets_faq/js/main.js"></script> 


</body>
</html>