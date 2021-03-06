<?php session_start();
   include("conexion.php"); 
   $link=Conectarse(); 
   $suc = mysqli_query($link, "SELECT nombre FROM establecimientos");
   $grupos = mysqli_query($link, "SELECT nombre FROM categorias");
   $productos = mysqli_query($link, "SELECT nombre FROM platillos");
?>

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
    <link rel="stylesheet" href="css/cupon.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/samba.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
      <!-- Breadcrumb-->
      <div class="breadcrumb-holder">
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.php">Inicio</a></li>
            <li class="breadcrumb-item active">Crear promoción basada en preferencias       </li>
          </ul>
        </div>
      </div>
      

       <!--Contenido_____________________ -->
      <div class="container-fluid">
       <div class="row content">
        <div class="col-md-8"><br><br>
         <div class="card">
          <div class="card-body">
           <div class="col-md-12">
          <br><center><h4>Detalles de la promoción</h4></center><br>
          <form id="MiFormulario" enctype='multipart/form-data' action="validarPromoPreferencias.php" method="post">
           <div class="form group">
           <div class="form-group row">
            <div class="col-sm-4">
             <label>Tipo:</label>
             <select id="tipo_promo" onchange="myFunction1()" name="tipo_promo" class="form-control" required>
               <option value="">Selecciona una</option>
               <option>2x1</option>
               <option>Descuento</option>
             </select>
            </div>
           <div class="col-sm-4">
             <label>Inicio:</label>
             <input id="fecha_inicio" name="fecha_inicio" type="date" placeholder="Fecha Inicial" class="form-control" oninput="funcion_fechainicial()" required>
           </div>
           <div class="col-sm-4">
             <label>Fin:</label>
             <input id="fecha_final" name="fecha_final" type="date" placeholder="Fecha Final" class="form-control" oninput="funcion_fechafinal()" required>
           </div>
           </div><!--form group row-->
           <div class="form-group row">
              <div class="col-sm-12">
                <center><label><b>Producto</b></label></center>
              </div>
           </div> 
           <div class="form-group row">
            <div class="col-sm-6">
             <label>Grupo:</label>
             <select name="grupo" id="grupo" class="form-control" required>
               <option value="">Selecciona un</option>
               <?php
                while($rowg = mysqli_fetch_row($grupos))
                {
                  echo "<option value='$rowg[0]'>$rowg[0]</option> ";
                }
               ?>
              </select>
            </div>
            <div class="col-sm-6">
             <label>Producto:</label>
             <select onchange="funcion_producto()" name="producto" id="producto" class="form-control" required>
               <option value="">Selecciona</option>
               <?php
                while($rowp = mysqli_fetch_row($productos))
                {
                  echo "<option value='$rowp[0]'>$rowp[0]</option> ";
                }
               ?>
              </select>
            </div>
            </div>
           <div class="form-group row">
             <div class="col-sm-12">
              <!-- <select onchange="funcion_sucursal()" name="sucursales" id="sucursales" class="form-control" required>
               <option value="">Selecciona una</option>
               <option value="todas">Todas</option>
               <?php
                // while($rows = mysqli_fetch_row($suc))
                // {
                //   echo "<option value='$rows[0]'>$rows[0]</option> ";
                // }
               ?>
              </select> -->
              <label class="form-control-label">Sucursal:</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              <label class="checkbox-inline">
                <input type="checkbox" value="Samba Cuernavaca" onclick="funcion_sucursal()" name="sucursales" id="sucursales">Samba Cuernavaca
              </label>&nbsp&nbsp&nbsp
              <label class="checkbox-inline">
                <input type="checkbox" value="Flor de Canela" onclick="funcion_sucursal2()" name="sucursales2" id="sucursales2">Flor de Canela
              </label>&nbsp&nbsp&nbsp
              <label class="checkbox-inline">
                <input type="checkbox" value="Cocina Bambu" onclick="funcion_sucursal3()" name="sucursales3" id="sucursales3">Cocina Bambu
              </label>
             </div>
             <label id="label_desc" class="col-sm-2" style="display:none;">Descuento:</label>
             <div class="col-sm-4">
              <input oninput="funcion_desc()" style="display:none;" id="select_desc" name="descuento" class="form-control" type="number" min="1" max="30" >
             </div>
            </div> <!-- form-group-row -->
            <!-- upload image -->
            <div class="form-group row">
              <div class="col-sm-12">
                <label><b>Imagen de Promoción</b></label>
                  <!-- <div class="input-group">
                      <span class="input-group-btn">
                          <span class="btn btn-default btn-file">
                              Upload… <input type="file" id="fileToUpload" name"fileToUpload">
                          </span>
                      </span> -->
                      <br>
                      Upload:
                      <input type="file" name="fileToUpload" id="fileToUpload">
                       <!--<input name="img_promo" type="text" class="form-control" readonly required>
 -->                  <!-- </div> -->
                  <!-- <img id='img-upload'/> -->
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-12">
               <center><button type="submit" class="btn btn-secondary">Cancelar</button>
               <button type="submit" class="btn btn-primary">Guardar Promoción</button></center>
              </div>
            </div>
           </div> <!-- form group -->
          </form>
         </div> <!-- cierra card -->
         </div>
         </div> <!-- cierra card-body -->
        </div> 
         <!-- creacion del cupon para la promocion -->
         <div class="col-md-4"><br><br> 
                <div class="dl coupon">     
                    <div class="discount alizarin"  style="font-size:40px;">
                        <span id="preview_promo"></span>
                        <div class="type" style="font-size:30px;">
                          <span id="preview_slogan"></span>
                          <img class="logo" src="img/sambalogo.png"></div>
                    </div>
                    <div>
                      <img class="foto" id="img-upload" >
                    </div>
                    <div class="descr">
                        <span id="preview_prod"><strong></strong></span>
                        <span id="preview_productos"><strong></strong></span>
                        <span id="preview_productos2"><strong></strong></span>
                    </div>
                    <div class="ends">
                        <center><span id="preview_suc"> </span><span id="preview_suc1"> </span><span id="preview_suc2"> </span><span id="preview_suc3"> </span></center>
                        <center><p id="preview_fechainicio"></p></center>
                        <center><p id="preview_fechafin"></p></center>
                    </div>
                    <div class="getcode">
                        <a data-toggle="collapse" href="#code-1" class="open-code">Obtener código</a>
                        <div id="code-1" class="collapse code">LV5MAY14</div>
                    </div>
                </div>
        </div>
       </div>
      </div> <!-- finaliza contenido -->

      <footer class="main-footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-6">
              <p>LKE &copy; 2018</p>
            </div>
            <div class="col-sm-6 text-right">
            <p>Design by <a href="http://www.lke.buap.mx/">LKE BUAP</a></p>

            </div>
          </div>
        </div>
      </footer>
    </div>

      <!-- Script para creación del cupón de forma dinamica -->
    <script type="text/javascript">
      function funcion_producto()
      {
        var x = document.getElementById("producto");
        var y = x.options[x.selectedIndex].text;
        document.getElementById("preview_prod").innerHTML = "En nuestro producto";
        document.getElementById('preview_productos').innerHTML = y;
        document.getElementById('preview_productos').style.color = "green";
        document.getElementById('preview_productos').style.fontSize = "larger";
      }
      function funcion_sucursal()
      {
          var checkBox1 = document.getElementById("sucursales");
          if (checkBox1.checked == true){
            var x = document.getElementById("sucursales").value;
            document.getElementById('preview_suc').innerHTML = "Disponible en:&nbsp";
            document.getElementById('preview_suc1').innerHTML = x+"&nbsp";
          } else {
            document.getElementById('preview_suc1').innerHTML = "";
          }
      }
      function funcion_sucursal2()
      {
   
        var checkBox2 = document.getElementById("sucursales2");

        if (checkBox2.checked == true){
            var y = document.getElementById("sucursales2").value;
            document.getElementById('preview_suc').innerHTML = "Disponible en:&nbsp";
            document.getElementById('preview_suc2').innerHTML = y+"&nbsp";
          } else {
            document.getElementById('preview_suc2').innerHTML = "";
          }
      }
      function funcion_sucursal3()
      {
        var checkBox3 = document.getElementById("sucursales3");

        if (checkBox3.checked == true){
            var y = document.getElementById("sucursales3").value;
            document.getElementById('preview_suc').innerHTML = "Disponible en:&nbsp ";
            document.getElementById('preview_suc3').innerHTML = y;
          } else {
            document.getElementById('preview_suc3').innerHTML = "";
          }
      }
      function funcion_fechainicial()
      {
        var x = document.getElementById("fecha_inicio").value;
        document.getElementById('preview_fechainicio').innerHTML = "Válido desde "+x;
      }
      function funcion_fechafinal()
      {
        var x = document.getElementById("fecha_final").value;
        document.getElementById('preview_fechafin').innerHTML = "Hasta "+x;
      }   
      function funcion_desc()
      {
        var x = document.getElementById("select_desc").value;
        document.getElementById('preview_promo').innerHTML = x+"%";
      }
    </script>


     <!-- Script para manipular formulario de acuerdo a tipos de ofertas -->
    <script type="text/javascript">
    
      function myFunction1() {
        var x = document.getElementById("tipo_promo").value;
        if (x=="Descuento") {
           document.getElementById("label_desc").style.display = "block";
           document.getElementById("select_desc").style.display = "block";
           document.getElementById("preview_promo").innerHTML = "%";
           document.getElementById("preview_slogan").innerHTML = "de descuento";

        };
        if (x=="2x1") {
           document.getElementById("label_desc").style.display = "none";
           document.getElementById("select_desc").style.display = "none";
           document.getElementById("preview_promo").innerHTML = "2x1";
           document.getElementById("preview_slogan").innerHTML = "Super Promo!";
        };
      }
    </script>

    <!-- script para upload image de promoción -->
    <script>
         $(document).ready( function() {
          $(document).on('change', '.btn-file :file', function() {
        var input = $(this),
          label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        input.trigger('fileselect', [label]);
        });

        $('.btn-file :file').on('fileselect', function(event, label) {
            
            var input = $(this).parents('.input-group').find(':text'),
                log = label;
            
            if( input.length ) {
                input.val(log);
            } else {
                if( log ) alert(log);
            }
          
        });
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                
                reader.onload = function (e) {
                    $('#img-upload').attr('src', e.target.result);
                }
                
                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#fileToUpload").change(function(){
            readURL(this);
        });   
      });
    </script>

    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>