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
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/mystyles.css">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/tabla-home.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/samba.ico">
    <script src="vendor/chart.js/Chart.min.js"></script>
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
            <h2 class="h5">Administrador</h2><span>Bienvenido</span>
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
                        <li><a href="promoventas.php"> <i class="fa fa-shopping-cart"></i>Crear promoción basado en ventas</a></li>
                        <li><a href="promopreferencias.php"> <i class="fa fa-shopping-basket"></i>Crear promoción basada en preferencias</a></li>
                        <li><a href="promoespecial.php"> <i class="fa fa-star"></i>Crear promoción especial</a></li>
                        <li><a href="gestionpromo.php"> <i class="fa fa-list-ol"></i>Gestionar promociones</a></li>
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
      <!-- Counts Section -->
      <section class="dashboard-counts section-padding">
        <div class="container-fluid">
          <div class="row">
            <?php
              include("php/dashboard/countsSection.php");
              include("php/dashboard/ordenesCanceladas.php");
            ?>
          </div>
        </div>
      </section>
      <!-- Header Section-->
      <section class="dashboard-header section-padding">
        <div class="container-fluid">
          <div class="row d-flex align-items-md-stretch">
            <!-- To Do List-->
                <!-- Bar Chart -->
                <div class="col-lg-6 col-md-12 flex-lg-last flex-md-first align-self-baseline">
                  <div class="card sales-report">
                    <h2 class="display h4">Gráfico de ventas</h2>
                    <p> </p>
                    <div class="bar-chart">
                      <canvas id="barChartVentas"></canvas>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6">
                  <div class="wrapper count-title d-flex">
                        <div class="table-responsive">
                            <h2 class="display h4">&nbsp;&nbsp;</h2>
                            <p> </p>
                            <table class="table">
                              <thead>
                                <tr>
                                  <th></th>
                                  <th>Fecha</th>
                                  <th>Ganancias</th>
                                  <th>Órdenes</th>
                                </tr>
                              </thead>
                                <?php
                                    include("php/dashboard/tablaGanORd.php");
                                ?>
                              <!--<tbody>
                                <tr>
                                  <th scope="row">1</th>
                                  <td class="display h4">Hoy</td>
                                  <?php
                                    //include("php/dashboard/gananciaHoy.php");
                                    include("php/dashboard/Hoy.php");
                                  ?>
                                </tr>
                                <tr>
                                  <th scope="row">2</th>
                                  <td>Ayer</td>
                                  <?php
                                    include("php/dashboard/Ayer.php");
                                    //include("php/dashboard/ordenesAyer.php");
                                  ?>
                                </tr>
                                <tr>
                                  <th scope="row">3</th>
                                  <td>Hace 7 días</td>
                                  <?php
                                    include("php/dashboard/Hace7Dias.php");
                                    //include("php/dashboard/ordenes7Dias.php");
                                  ?>
                                </tr>
                                <tr>
                                  <th scope="row">4</th>
                                  <td>Hace 30 días</td>
                                  <?php
                                    include("php/dashboard/Hace30Dias.php");
                                    //include("php/dashboard/ordenes30Dias.php");
                                  ?>
                                </tr>
                                <tr>
                                  <th scope="row">5</th>
                                  <td>Hace 90 días</td>
                                  <?php
                                    include("php/dashboard/Hace90Dias.php");
                                    //include("php/dashboard/ordenes90Dias.php");
                                  ?>
                                </tr>
                              </tbody>-->
                            </table>
                          </div>
                    </div>
                </div>
            </div>
        </div>
      </section>
      <!--seccion gastos ganancias-->
      <!--<section class="statics">
        <div class="container-fluid">
              <div class="row d-flex">
                <div class="col-lg-12">
                    <div class="card income text-center">
                        <div class="card-header">
                          <h4>Gastos vs Ganancias</h4>
                        </div>
                        <div class="card-body form-inline align-items-center">
                            
                            Pie Chart
                              <div class=" col-lg-4 ">
                                <div>
                                  <canvas id="pieChart" width="300" height="200"> </canvas>
                                </div>
                              </div>
                            datos gastos ventas
                               <div class="col-lg-3">
                                  <div class=" user-activity ">
                                      <div class="strong">VS</div>
   
                                    <div class="d-flex justify-content-between">
                                        <div class="page-statistics-left"><span>Gastos</span><br/><strong class="text-primary strongText">230</strong></div>
                                      <div class="page-statistics-right"><span>Ganancias</span><br/><strong class="text-primary strongText">230</strong></div>
                                    </div>
                                  </div>
                                </div> 
                            espacio
                            <div class="col-lg-1">
                            </div>
                            recomendaciones
                               <div class="col-lg-4">
                                  <div class="to-do">
                                    <h2 class="display h4 strongh2Text">Recomendaciones</h2>
                                    <p>Estas son algunas de la recomendaciones que le hacemos:</p>
                                    <ul class="check-lists list-unstyled">
                                      <li class="d-flex align-items-center"> 
                                        <input type="checkbox" id="list-1" name="list-1" class="form-control-custom">
                                        <label for="list-1">Similique sunt in culpa qui officia</label>
                                      </li>
                                      <li class="d-flex align-items-center"> 
                                        <input type="checkbox" id="list-2" name="list-2" class="form-control-custom">
                                        <label for="list-2">Ed ut perspiciatis unde omnis iste</label>
                                      </li>
                                      <li class="d-flex align-items-center"> 
                                        <input type="checkbox" id="list-3" name="list-3" class="form-control-custom">
                                        <label for="list-3">At vero eos et accusamus et iusto </label>
                                      </li>
                                      <li class="d-flex align-items-center"> 
                                        <input type="checkbox" id="list-4" name="list-4" class="form-control-custom">
                                        <label for="list-4">Explicabo Nemo ipsam voluptatem</label>
                                      </li>
                                      <li class="d-flex align-items-center"> 
                                        <input type="checkbox" id="list-5" name="list-5" class="form-control-custom">
                                        <label for="list-5">Similique sunt in culpa qui officia</label>
                                      </li>
                                    </ul>
                                   </div>
                                </div>      
                                
                            fin de gastos vs ganancias
                        </div>
                    </div>
                </div>
              </div>
            </div>
        </section>-->
      <!-- Statistics Section-->
      <section class="statistics">
        <div class="container-fluid">
          <div class="row d-flex">
            <div class="col-lg-4">
              <!-- Income-->
              <div class="card income text-center">
                <div class="icon"><i class="icon-line-chart"></i></div>
                <div class="number">46.58%</div><strong class="text-primary">Crecimiento</strong>
                <p>Valor estamado a partir de las ventas generadas</p>
              </div>
            </div>
            <div class="col-lg-4">
              <!-- Monthly Usage-->
              <div class="card data-usage">
                <h2 class="display h4">Venta promedio</h2>
                <div class="row d-flex align-items-center">
                  <div class="col-sm-6">
                    <div id="progress-circle" class="d-flex align-items-center justify-content-center"></div>
                  </div>
                  <div class="col-sm-6"><strong class="text-primary">$3400.00</strong><small>Venta promedio</small><span>durante el mes.</span></div>
                </div>
                <p>Valor estamado a partir de las ventas generadas.</p>
              </div>
            </div>
            <div class="col-lg-4">
              <!-- User Actibity-->
              <div class="card user-activity">
                <h2 class="display h4">Actividad del usuario</h2>
                <div class="number">210</div>
                <h3 class="h4 display">vistas</h3>
                <div class="progress">
                  <div role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar bg-primary"></div>
                </div>
                <div class="page-statistics d-flex justify-content-between">
                  <div class="page-statistics-left"><span>Alcanzado</span><strong>23.0%</strong></div>
                  <div class="page-statistics-right"><span>Estimado</span><strong>73.4%</strong></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Updates Section -->
      <section class="mt-30px mb-30px">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-8 col-md-12">
              <!-- Recent Updates Widget          -->
              <div id="new-updates" class="card updates recent-updated">
                <div id="updates-header" class="card-header d-flex justify-content-between align-items-center">
                          <div class="tab">
                          <button class="tablinks" onclick="openTable(event, 'Tiendas')" id="defaultOpen">Top Sucursales</button>
                          <button class="tablinks" onclick="openTable(event, 'Productos')">Top productos</button>
          
                        </div>
                    <a data-toggle="collapse" data-parent="#new-updates" href="#updates-box" aria-expanded="true" aria-controls="updates-box"><i class="fa fa-angle-down"></i></a>
                </div>
                  
                  
                <div id="updates-box" role="tabpanel" class="collapse show">
                  <ul class="news list-unstyled">
                    <!-- Item-->
                        <div id="Tiendas" class="tabcontent">
                            <!--este el el llamadao a php-->
                            <?php
                              include("php/dashboard/ventas.php");
                            ?>
                        </div>

                        <div id="Productos" class="tabcontent">
                          <!--Script que muestra la tabla de Top Productos-->
                          <?php
                            include("php/dashboard/TopProductos.php");
                          ?>
                        </div>

                      <!--item-->
                  </ul>
                </div>
              </div>
              <!-- Recent Updates Widget End-->
            </div>

            <div class="col-lg-4 col-md-6">
              <!-- Recent Activities Widget      -->
              <div id="recent-activities-wrapper" class="card updates activities">
                <div id="activites-header" class="card-header d-flex justify-content-between align-items-center">
                  <h2 class="h5 display"><a data-toggle="collapse" data-parent="#recent-activities-wrapper" href="#activities-box" aria-expanded="true" aria-controls="activities-box">Comentarios recientes</a></h2><a data-toggle="collapse" data-parent="#recent-activities-wrapper" href="#activities-box" aria-expanded="true" aria-controls="activities-box"><i class="fa fa-angle-down"></i></a>
                </div>
                <div id="activities-box" role="tabpanel" class="collapse show">
                  <ul class="activities list-unstyled">
                    <?php
                      include("php/dashboard/comentariosRecientes.php");
                    ?>
                  </ul>
                </div>
              </div>
            </div>
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
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/charts-home.js"></script>
    <script src="js/tabla-home.js"></script>
    <!--<script src="js/chart_dashboard.js"></script>-->
    <script src="js/app.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>