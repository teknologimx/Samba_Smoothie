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
            <li><a href="index.html"> <i class="fa fa-home"></i>Inicio                             </a></li>
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
                        <li><a href="promoventas.html"> <i class="fa fa-shopping-cart"></i>Crear promoción basado en ventas</a></li>
                        <li><a href="promopreferencias.html"> <i class="fa fa-shopping-basket"></i>Crear promoción basada en preferencias</a></li>
                        <li><a href="promoespecial.html"> <i class="fa fa-star"></i>Crear promoción especial</a></li>
                        <li><a href="gestionpromo.html"> <i class="fa fa-list-ol"></i>Gestionar promociones</a></li>
                      </ul>
                </li>
                <li><a href="#tercermenu2" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-briefcase"></i>Inteligencia de negocios</a>
                      <ul id="tercermenu2" class="collapse list-unstyled ">
                        <li><a href="dashboard.php"> <i class="fa fa-tachometer"></i>Reporte general</a></li>
                        <li><a href="reporteespecifico.html"> <i class="fa fa-shopping-cart"></i>Reportes específicos</a></li>
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
                <!-- Notificaciones
                <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell"></i><span class="badge badge-warning">12</span></a>
                  <ul aria-labelledby="notifications" class="dropdown-menu">
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification d-flex justify-content-between">
                          <div class="notification-content"><i class="fa fa-envelope"></i>You have 6 new messages </div>
                          <div class="notification-time"><small>4 minutes ago</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification d-flex justify-content-between">
                          <div class="notification-content"><i class="fa fa-twitter"></i>You have 2 followers</div>
                          <div class="notification-time"><small>4 minutes ago</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification d-flex justify-content-between">
                          <div class="notification-content"><i class="fa fa-upload"></i>Server Rebooted</div>
                          <div class="notification-time"><small>4 minutes ago</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification d-flex justify-content-between">
                          <div class="notification-content"><i class="fa fa-twitter"></i>You have 2 followers</div>
                          <div class="notification-time"><small>10 minutes ago</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong> <i class="fa fa-bell"></i>view all notifications                                            </strong></a></li>
                  </ul>
                </li>-->
                <!-- Mensajes 
                <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope"></i><span class="badge badge-info">10</span></a>
                  <ul aria-labelledby="notifications" class="dropdown-menu">
                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
                        <div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="msg-body">
                          <h3 class="h5">Jason Doe</h3><span>sent you a direct message</span><small>3 days ago at 7:58 pm - 10.06.2014</small>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
                        <div class="msg-profile"> <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="msg-body">
                          <h3 class="h5">Frank Williams</h3><span>sent you a direct message</span><small>3 days ago at 7:58 pm - 10.06.2014</small>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> 
                        <div class="msg-profile"> <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="msg-body">
                          <h3 class="h5">Ashley Wood</h3><span>sent you a direct message</span><small>3 days ago at 7:58 pm - 10.06.2014</small>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong> <i class="fa fa-envelope"></i>Read all messages    </strong></a></li>
                  </ul>
                </li>-->
                <!-- Languages   -->

                <!-- Log out-->
                <li class="nav-item"><a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline-block" style="font-size: 1.5em;">Salir</span><i class="fa fa-power-off" style="font-size: 1.5em;"></i></a></li>
              </ul>
            </div>
          </div>
        </nav>
      </header>
      <!-- Counts Section -->
      <section class="dashboard-counts section-padding">
        <div class="container-fluid">
          <div class="row">
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-  6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="fa fa-users"></i></div>
                <div class="name"><strong class="text-uppercase">Clientes Totales</strong>
                  <div class="count-number">25</div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-8 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-padnote"></i></div>
                <div class="name"><strong class="text-uppercase">Ordenes Realizadas</strong>
                  <div class="count-number">400</div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-check"></i></div>
                <div class="name"><strong class="text-uppercase">Calificación Producto</strong>
                  <div class="count-number">342</div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-check"></i></div>
                <div class="name"><strong class="text-uppercase">Calificación Servicio</strong>
                  <div class="count-number">342</div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-list-1"></i></div>
                <div class="name"><strong class="text-uppercase">Ordenes Entregadas</strong>
                  <div class="count-number">123</div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-list"></i></div>
                <div class="name"><strong class="text-uppercase">Ordenes Canceladas</strong>
                  <div class="count-number">92</div>
                </div>
              </div>
            </div>
            <!-- Count item widget-->
            <!--<div class="col-xl-2 col-md-4 col-6">
              <div class="wrapper count-title d-flex">
                <div class="icon"><i class="icon-list-1"></i></div>
                <div class="name"><strong class="text-uppercase">New Cases</strong><span>Last 7 days</span>
                  <div class="count-number">70</div>
                </div>
              </div>
            </div>-->
          </div>
        </div>
      </section>
      <!-- Header Section-->
      <section class="dashboard-header section-padding">
        <div class="container-fluid">
          <div class="row d-flex align-items-md-stretch">
            <!-- To Do List-->
                <!-- Line Chart -->
                <div class="col-lg-6 col-md-12 flex-lg-last flex-md-first align-self-baseline">
                  <div class="card sales-report">
                    <h2 class="display h4">Gráfico de ventas</h2>
                    <p> </p>
                    <div class="line-chart">
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
                              <tbody>
                                <tr>
                                  <th scope="row">1</th>
                                  <td class="display h4">Hoy</td>
                                  <td class="display h4">65</td>
                                  <td class="display h4">35</td>
                                </tr>
                                <tr>
                                  <th scope="row">2</th>
                                  <td>Ayer</td>
                                  <td>50</td>
                                  <td>15</td>
                                </tr>
                                <tr>
                                  <th scope="row">3</th>
                                  <td>Hace 7 días</td>
                                  <td>80</td>
                                  <td>30</td>
                                </tr>
                                <tr>
                                  <th scope="row">4</th>
                                  <td>Hace 30 días</td>
                                  <td>120</td>
                                  <td>50</td>
                                </tr>
                                <tr>
                                  <th scope="row">5</th>
                                  <td>Hace 90 días</td>
                                  <td>81</td>
                                  <td>40</td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                    </div>
                </div>
            </div>
        </div>
      </section>
      <!--seccion gastos ganancias-->
      <section class="statics">
        <div class="container-fluid">
              <div class="row d-flex">
                <div class="col-lg-12">
                    <div class="card income text-center">
                        <div class="card-header">
                          <h4>Gastos vs Ganancias</h4>
                        </div>
                        <div class="card-body form-inline align-items-center">
                            
                            <!-- Pie Chart-->
                              <div class=" col-lg-4 ">
                                <div>
                                  <canvas id="pieChart" width="300" height="200"> </canvas>
                                </div>
                              </div>
                            <!--datos gastos ventas-->
                               <div class="col-lg-3">
                                  <div class=" user-activity ">
                                      <div class="strong">VS</div>
   
                                    <div class="d-flex justify-content-between">
                                        <div class="page-statistics-left"><span>Gastos</span><br/><strong class="text-primary strongText">230</strong></div>
                                      <div class="page-statistics-right"><span>Ganancias</span><br/><strong class="text-primary strongText">230</strong></div>
                                    </div>
                                  </div>
                                </div> 
                            <!--espacio-->
                            <div class="col-lg-1">
                            </div>
                            <!--recomendaciones-->
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
                                
                            <!--fin de gastos vs ganancias-->
                        </div>
                    </div>
                </div>
              </div>
            </div>
        </section>
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

                            <?php
                              include("php/dashboard/ventas.php");
                            ?>
                        </div>

                        <div id="Productos" class="tabcontent">
                            <div class="card-body">
                              <div class="table-responsive">
                                <table class="table table-striped table-sm">
                                  <thead>
                                    <tr>
                                      <th>#</th>
                                      <th>Producto</th>
                                      <th>Unidades vendidas</th>
                                      <th>Ventas generadas</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <th scope="row">1</th>
                                      <td>Mark</td>
                                      <td>Otto</td>
                                      <td>@mdo</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">2</th>
                                      <td>Jacob</td>
                                      <td>Thornton</td>
                                      <td>@fat</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">3</th>
                                      <td>Larry</td>
                                      <td>the Bird</td>
                                      <td>@twitter      </td>
                                    </tr>
                                    <tr>
                                      <th scope="row">4</th>
                                      <td>Mark</td>
                                      <td>Otto</td>
                                      <td>@mdo</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">5</th>
                                      <td>Jacob</td>
                                      <td>Thornton</td>
                                      <td>@fat</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">6</th>
                                      <td>Larry</td>
                                      <td>the Bird</td>
                                      <td>@twitter       </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </div>
                            </div>
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
                  <h2 class="h5 display"><a data-toggle="collapse" data-parent="#recent-activities-wrapper" href="#activities-box" aria-expanded="true" aria-controls="activities-box">Actividades recientes</a></h2><a data-toggle="collapse" data-parent="#recent-activities-wrapper" href="#activities-box" aria-expanded="true" aria-controls="activities-box"><i class="fa fa-angle-down"></i></a>
                </div>
                <div id="activities-box" role="tabpanel" class="collapse show">
                  <ul class="activities list-unstyled">
                    <!-- Item-->
                    <li>
                      <div class="row">
                        <div class="col-4 date-holder text-right">
                          <div class="icon"><i class="icon-clock"></i></div>
                          <div class="date"> <span>6:00 am</span><span class="text-info">6 hours ago</span></div>
                        </div>
                        <div class="col-8 content"><strong>Meeting</strong>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.                </p>
                        </div>
                      </div>
                    </li>
                    <!-- Item-->
                    <li>
                      <div class="row">
                        <div class="col-4 date-holder text-right">
                          <div class="icon"><i class="icon-clock"></i></div>
                          <div class="date"> <span>6:00 am</span><span class="text-info">6 hours ago</span></div>
                        </div>
                        <div class="col-8 content"><strong>Meeting</strong>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.                </p>
                        </div>
                      </div>
                    </li>
                    <!-- Item-->
                    <li>
                      <div class="row">
                        <div class="col-4 date-holder text-right">
                          <div class="icon"><i class="icon-clock"></i></div>
                          <div class="date"> <span>6:00 am</span><span class="text-info">6 hours ago</span></div>
                        </div>
                        <div class="col-8 content"><strong>Meeting</strong>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.                </p>
                        </div>
                      </div>
                    </li>
                    <!-- Item-->
                    <li>
                      <div class="row">
                        <div class="col-4 date-holder text-right">
                          <div class="icon"><i class="icon-clock"></i></div>
                          <div class="date"> <span>6:00 am</span><span class="text-info">6 hours ago</span></div>
                        </div>
                        <div class="col-8 content"><strong>Meeting</strong>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.                </p>
                        </div>
                      </div>
                    </li>
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
              <p>Teknologi &copy; 2018</p>
            </div>
            <div class="col-sm-6 text-right">
              <p>Design by <a href="#" class="external">Teknologi</a></p>

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
    <script src="js/chart_dashboard.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>