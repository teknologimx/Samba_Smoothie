<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Samba BI</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet" href="css/grasp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/samba.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <!-- Side Navbar -->
    <nav class="side-navbar">
      <div class="side-navbar-wrapper">
        <!-- Sidebar Header    -->
        <div class="sidenav-header d-flex align-items-center justify-content-center">
          <!-- Info usuario-->
          <div class="sidenav-header-inner text-center"><img src="img/user.png" alt="person" class="img-fluid rounded-circle">
            <h2 class="h5">Propietario</h2><span>Bienvenido</span>
          </div>
          <!-- Small Brand ,cuando minimizas el menu-->
          <div class="sidenav-header-logo"><a href="#" class="brand-small text-center"><img src="img/SAMBA%20FREH.png"></a></div>
        </div>
        <!-- Sidebar Navigation Menus-->
        <div class="main-menu">
          <h5 class="sidenav-heading">Menú</h5>
          <ul id="side-main-menu" class="side-menu list-unstyled">                  
            <li><a href="index.php"> <i class="fa fa-home"></i>Inicio                             </a></li>
            <li><a href="#"> <i class="fa fa-truck"></i>Embarques                             </a></li>
            <li><a href="#"> <i class="fa fa-users"></i>Empleados                             </a></li>
            <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-cubes"></i>Catálogos </a>
              <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                <li><a href="#">Page</a></li>
                <li><a href="#">Page</a></li>
                <li><a href="#">Page</a></li>
              </ul>
            </li>
            <li><a href="#"> <i class="fa fa-cutlery"></i>Platillos                             </a></li>
            <li><a href="#"> <i class="fa fa-industry"></i>Empresas                             </a></li>
            <li><a href="#"> <i class="fa fa-building-o"></i>Cocinas                             </a></li>
            <li><a href="#submenuBI" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-cogs"></i>Bussines Inteligence </a>
              <ul id="submenuBI" class="collapse list-unstyled ">
                <li><a href="#tercermenu1" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-certificate"></i>Promociones</a>
                      <ul id="tercermenu1" class="collapse list-unstyled ">
                        <li><a href="verpromo.php"> <i class="fa fa-shopping-cart"></i>Ver promociones</a></li>
                      </ul>
                </li>
                <li><a href="#tercermenu2" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-briefcase"></i>Inteligencia de negocios</a>
                      <ul id="tercermenu2" class="collapse list-unstyled ">
                        <li><a href="reportegeneral.php"> <i class="fa fa-tachometer"></i>Reporte general</a></li>
                        <li><a href="reporteespecifico.php"> <i class="fa fa-shopping-cart"></i>Reportes específicos</a></li>
                      </ul>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="page">
      <!-- navbar-->
      <header class="header">
        <nav class="navbar">
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="icon-bars"> </i></a><a href="#" class="navbar-brand">
                  <div class="brand-text d-none d-md-inline-block"><span><img id="logo" src="img/samba_white.png" width="150px"></span></div></a></div>
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">

                <!-- Log out-->
                <li class="nav-item"><a href="../logout.php" class="nav-link logout"> <span class="d-none d-sm-inline-block" style="font-size: 1.5em;">Salir</span><i class="fa fa-power-off" style="font-size: 1.5em;"></i></a></li>
              </ul>
            </div>
          </div>
        </nav>
      </header>
      <!-- Breadcrumb-->
      <div class="breadcrumb-holder">
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Inicio</a></li>
            <li class="breadcrumb-item active">Reportes específicos       </li>
          </ul>
        </div>
      </div>
      <section class="statistics">
        <div class="container-fluid">
          <div class="row">
                <div class="col-lg-12"> <header><h1 class="h3 display">Ventas</h1></header></div>
                <div class="col-lg-2"></div>
                <div class="col-lg-4">
                  <!-- Income-->
                  <div class="card income text-center"><a href="ventasporproducto.php" style="font-size:12px;text-align: right;">Ver informe</a>
                    <div class="icon"><i class="fa fa-shopping-basket"></i></div>
                    <div class="number">Ventas</div><strong class="text-primary">por producto</strong>
                    <p>Valor estamado a partir de las ventas generadas</p>
                  </div>
                </div>
                <div class="col-lg-4">
                  <!-- Income-->
                  <div class="card income text-center"><a href="ventasporestablecimiento.php" style="font-size:12px;text-align: right;">Ver informe</a>
                    <div class="icon"><i class="fa fa-shopping-basket"></i></div>
                    <div class="number">Ventas</div><strong class="text-primary">por establecimiento</strong>
                    <p>Valor estamado a partir de las ventas generadas</p>
                  </div>
                </div>

                <div class="col-lg-12"> <header><h1 class="h1 display">Empresas</h1></header></div>
                <div class="col-lg-2"></div>
                <div class="col-lg-4">
                  <!-- Income-->
                  <div class="card income text-center"><a href="clientesleales.php" style="font-size:12px;text-align: right;">Ver informe</a>
                    <div class="icon"><i class="fa fa-user-plus"></i></div>
                    <div class="number">Empresas</div><strong class="text-primary">leales</strong>
                    <p>Valor estamado a partir de las ventas generadas</p>
                  </div>
                </div>
                <div class="col-lg-4">
                  <!-- Income-->
                  <div class="card income text-center"><a href="clientesriesgo.php" style="font-size:12px;text-align: right;">Ver informe</a>
                    <div class="icon"><i class="fa fa-user-times"></i></div>
                    <div class="number">Empresas</div><strong class="text-primary">en riesgo</strong>
                    <p>Valor estamado a partir de las ventas generadas</p>
                  </div>
                </div>
                <div class="col-lg-12"> <header><h1 class="h1 display">Finanzas</h1></header></div>
                <div class="col-lg-2"></div>
                <!-- <div class="col-lg-4"> -->
                  <!-- Income-->
                  <!-- <div class="card income text-center"><a href="resumenfinanciero.php" style="font-size:12px;text-align: right;">Ver informe</a>
                    <div class="icon"><i class="fa fa-book fa-fw"></i></div>
                    <div class="number">Resumen</div><strong class="text-primary">Financiero</strong>
                    <p>Valor estamado a partir de las ventas generadas</p>
                  </div> -->
                <!-- </div> -->
                <div class="col-lg-4 offset-md-2">
                  <!-- Income-->
                  <div class="card income text-center"><a href="pronosticoventas.php" style="font-size:12px;text-align: right;">Ver informe</a>
                    <div class="icon"><i class="fa fa-money"></i></div>
                    <div class="number">Pronóstico</div><strong class="text-primary">de ventas</strong>
                    <p>Valor estamado a partir de las ventas generadas</p>
                  </div>
                </div>
                <div class="col-lg-12"> <header><h1 class="h1 display"></h1></header></div>
            
            </div>
          </div>
        </section>
            
      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>LKE &copy; 2018</p>
            </div>
            <div class="col-sm-6 text-right">
              <p>Design by <a href="">Jorge Rojas</a></p>

            </div>
          </div>
        </div>
      </footer>
    </div>
      
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="js/charts-custom.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>