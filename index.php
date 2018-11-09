<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Samaba BI V1</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="admin/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="admin/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="admin/css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet" href="admin/css/grasp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="admin/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="admin/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="admin/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="admin/img/samba.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <div class="page login-page" style="background-image:url(fond.jpg);width:100%;height:auto;">
      <div class="container" style="opacity: 0.9;filter: alpha(opacity=90);">
        <div class="form-outer text-center d-flex align-items-center center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <div class="form-inner">
            <div><img src="logsamba.png"></div>
            <p>&nbsp;</p>
            <div class="logo text-uppercase"><span>Iniciar</span><strong class="text-primary"> Sesión</strong></div>
            <p>Ingrese su usuario y contraseña para acceder al sistema.</p>
            <form action="validar_usuario.php" method="post" class="text-left form-validate">
              <div class="form-group-material">
                <input id="usuario" type="text" name="usuario" required data-msg="Por favor ingresa tu usuario" class="input-material">
                <label for="login-username" class="label-material">Usuario</label>
              </div>
              <div class="form-group-material">
                <input id="password" type="password" name="password" required data-msg="Por favor ingresa tu contraseña" class="input-material">
                <label for="login-password" class="label-material">Contraseña</label>
              </div>
              <div class="form-group text-center"><!-- <a id="login" href="index.php" class="btn btn-primary">Login</a> -->
              <button type="submit" class="btn btn-primary">Ingresar</button>
                <!-- This should be submit button but I replaced it with <a> for demo purposes-->
              </div>
            </form>
          </div>
          <div class="copyrights text-center">
          <p>Design by <a href="http://www.lke.buap.mx/">LKE BUAP</a></p>
          </div>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="admin/vendor/jquery/jquery.min.js"></script>
    <script src="admin/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="admin/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="admin/js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="admin/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="admin/vendor/chart.js/Chart.min.js"></script>
    <script src="admin/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="admin/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="admin/js/front.js"></script>
  </body>
</html>
