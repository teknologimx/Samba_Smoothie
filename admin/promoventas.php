<?php session_start();
   include("conexion.php"); 
   $link=Conectarse(); 
   $categorias = mysqli_query($link, "SELECT id_categoria, categoria FROM cat_categorias");
   $sucursales = mysqli_query($link, "SELECT nombre FROM establecimientos");
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
                <!-- Log out-->
                <li class="nav-item"><a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline-block" style="font-size: 1.5em;">Salir</span><i class="fa fa-power-off" style="font-size: 1.5em;"></i></a></li>
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
            <li class="breadcrumb-item active">Crear promoción basada en ventas       </li>
          </ul>
        </div>
      </div>

      <!--Contenido_____________________ -->
      <div class="container-fluid">
       <div class="row content">
        <div class="col-md-8"><br>
         <div class="card">
          <div class="card-body">
          <center><h4>Nuestras Recomendaciones</h4></center>
           <center><div class="col-md-12">
             <img id="img-recomendadas" style="width:70px; heigth:70px;"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdxSY3swLDGNus2cyl2-AqbdI2Dac_Mn___5gI_n0k0zPsT3bV2w" class="round" alt="Producto 1">
             <img id="img-recomendadas"style="width:70px; heigth:70px;"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdxSY3swLDGNus2cyl2-AqbdI2Dac_Mn___5gI_n0k0zPsT3bV2w" class="round" alt="Producto 2">
             <img id="img-recomendadas" style="width:70px; heigth:70px;"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdxSY3swLDGNus2cyl2-AqbdI2Dac_Mn___5gI_n0k0zPsT3bV2w" class="round" alt="Producto 3">
             <img id="img-recomendadas" style="width:70px; heigth:70px;"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdxSY3swLDGNus2cyl2-AqbdI2Dac_Mn___5gI_n0k0zPsT3bV2w" class="round" alt="Producto 4">
             <img id="img-recomendadas" style="width:70px; heigth:70px;"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdxSY3swLDGNus2cyl2-AqbdI2Dac_Mn___5gI_n0k0zPsT3bV2w" class="round" alt="Producto 5"> <br><br>
           </div></center>
          <center><h4>Detalles de la promoción</h4></center>
          <form enctype='multipart/form-data' action="validarPromoVentas.php" method="post">
           <div class="form group">
           <div class="form-group row">
            <div class="col-sm-4">
             <label>Tipo de promoción:</label>
             <select id="tipo" onchange="myFunction()" name="tipo_oferta" class="form-control">
               <option value="2x1">2x1</option>
               <option value="Descuento">Descuento</option>
               <option value="Combo">Combo</option>
             </select>
            </div>
           <div class="col-sm-4">
             <label>Inicio:</label>
             <input name="fecha_inicio" type="date" placeholder="Fecha Inicial" class="form-control">
           </div>
           <div class="col-sm-4">
             <label>Fin:</label>
             <input name="fecha_final" type="date" placeholder="Fecha Final" class="form-control">
           </div>
           </div><!--form group row-->
           <div class="form-group row">
              <div class="col-sm-12">
                <center><label><b>Producto 1</b></label></center>
              </div>
           </div> 
           <div class="form-group row">
            <div class="col-sm-4">
             <label>Categoría:</label>
             <select name="categoria" class="form-control" id="cat">
              <option value="">Selecciona una</option>
               <?php
                while($row = mysqli_fetch_row($categorias))
                {
                  echo "<option value='$row[0]'>$row[1]</option> ";
                }
               ?>
             </select>
            </div>
            <div class="col-sm-4">
             <label>Línea:</label>
             <select name="linea" id="lineas" class="form-control">
               <option value="">Selecciona una</option>
             </select>
            </div>
            <div class="col-sm-4">
             <label>Producto:</label>
             <select name="producto" id="producto" class="form-control">
               <option value="">Selecciona</option>
             </select>
            </div>
            </div> 
            <!-- producto numero dos inicia -->
            <div id="producto_2" style="display:none;" class="form-group row">
              <div class="col-sm-12">
                <center><label><b>Producto 2</b></label></center>
              </div>
            </div>
            <div class="form-group row">
            <div style="display:none;" id="div_cat" class="col-sm-4">
             <label>Categoría:</label>
             <select name="categoria2" class="form-control" id="cat2">
              <option value="">Selecciona una</option>
               <?php
                $categorias1 = mysqli_query($link, "SELECT id_categoria, categoria FROM cat_categorias");
                while($row1 = mysqli_fetch_row($categorias1))
                {
                  echo "<option value='$row1[0]'>$row1[1]</option> ";
                }
               ?>
             </select>
            </div>
            <div style="display:none;" id="div_linea" class="col-sm-4"> 
             <label>Línea:</label>
             <select name="linea2" id="lineas2" class="form-control">
               <option value="">Selecciona una</option>
             </select>
            </div>
            <div style="display:none;" id="div_prod" class="col-sm-4">
             <label>Producto:</label>
             <select name="producto2" id="producto2" class="form-control">
               <option value="">Selecciona</option>
             </select>
            </div>
           </div> <!-- form-group-row -->
           <div class="form-group row">
            <label class="col-sm-2 form-control-label">Sucursal:</label>
            <!-- <div class="col-sm-4">
             <label class="checkbox-inline">
               <input id="inlineCheckbox1" type="checkbox" value="option1"> Todas
             </label>
             <label class="checkbox-inline">
               <input id="inlineCheckbox2" type="checkbox" value="option2"> Específica
             </label>
            </div> -->
             <div class="col-sm-4">
              <select name="sucursales" class="form-control">
               <option value="">Todas</option>
               <?php
                while($row_suc = mysqli_fetch_row($sucursales))
                {
                  echo "<option value='$row_suc[0]'>$row_suc[0]</option> ";
                }
               ?>
              </select>
             </div>
             <label id="label_desc" class="col-sm-2" style="display:none;">Descuento:</label>
             <div class="col-sm-4">
              <select id="select_desc" name="descuento" class="form-control" style="display:none;">
               <option>5%</option>
               <option>10%</option>
               <option>15%</option>
               <option>20%</option>
               <option>25%</option>
               <option>30%</option>
              </select>
             </div>
            </div> <!-- form-group-row -->
            <div class="form-group row">
              <div class="col-sm-12">
                <label><b>Imagen de Promoción</b></label>
                  <div class="input-group">
                      <span class="input-group-btn">
                          <span class="btn btn-default btn-file">
                              Upload… <input type="file" id="imgInp">
                          </span>
                      </span>
                      <input name="img_promo" type="text" class="form-control" readonly>
                  </div>
                  <img id='img-upload'/>
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
         </div> <!-- cierra card-body -->
        </div> 
        <div class="col-md-4"><br><br> 
                <div class="dl coupon">     
                    <div class="discount alizarin">30%
                        <div class="type" style="font-size:30px;">de descuento<img class="logo" src="img/sambalogo.png"></div>
                    </div>
                    <div>
                      <img class="foto" src="img/fondocupon.jpg">
                    </div>
                    <div class="descr">
                        <strong>En nuestro productos XXXX</strong>  
                    </div>
                    <div class="ends">
                        <small>* Valido en las sucursales XXX. Vigencia de XX/XX/XX a XX/XX/XX.</small>
                    </div>
                    <div class="getcode">
                        <a data-toggle="collapse" href="#code-1" class="open-code">Obtener código</a>
                        <div id="code-1" class="collapse code">LV5MAY14</div>
                    </div>
                </div>
        </div>
       </div>
      </div> <!-- finaliza contenido -->  

      <!-- footer inicia____________________________________________ -->
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

    <script type="text/javascript">
     //producto 1
      $(document).ready(function(){
          $('#cat').on('change',function(){
              var catID = $(this).val();
              if(catID){
                  $.ajax({
                      type:'POST',
                      url:'ajaxData.php',
                      data:'cat_id='+catID,
                      success:function(html){
                          $('#lineas').html(html);
                          $('#producto').html('<option value="">Selecciona...</option>'); 
                      }
                  }); 
              }else{
                  $('#lineas').html('<option value="">Selecciona...</option>');
                  $('#producto').html('<option value="">Selecciona...</option>'); 
              }
          });
          
          $('#lineas').on('change',function(){
              var lineaID = $(this).val();
              if(lineaID){
                  $.ajax({
                      type:'POST',
                      url:'ajaxData.php',
                      data:'linea_id='+lineaID,
                      success:function(html){
                          $('#producto').html(html);
                      }
                  }); 
              }else{
                  $('#producto').html('<option value="">Selecciona</option>'); 
              }
          });
      });
        
      //producto 2
      $(document).ready(function(){
          $('#cat2').on('change',function(){
              var catID2 = $(this).val();
              if(catID2){
                  $.ajax({
                      type:'POST',
                      url:'ajaxData.php',
                      data:'cat_id2='+catID2,
                      success:function(html){
                          $('#lineas2').html(html);
                          $('#producto2').html('<option value="">Selecciona...</option>'); 
                      }
                  }); 
              }else{
                  $('#lineas2').html('<option value="">Selecciona...</option>');
                  $('#producto2').html('<option value="">Selecciona...</option>'); 
              }
          });
          
          $('#lineas2').on('change',function(){
              var lineaID2 = $(this).val();
              if(lineaID2){
                  $.ajax({
                      type:'POST',
                      url:'ajaxData.php',
                      data:'linea_id2='+lineaID2,
                      success:function(html){
                          $('#producto2').html(html);
                      }
                  }); 
              }else{
                  $('#producto2').html('<option value="">Selecciona</option>'); 
              }
          });
      });
    </script>

    <script type="text/javascript">
      function myFunction() {
        var x = document.getElementById("tipo").value;
        if (x=="Descuento") {
           document.getElementById("label_desc").style.display = "block";
           document.getElementById("select_desc").style.display = "block";
           document.getElementById("producto2").style.display = "none";
           document.getElementById("div_prod").style.display = "none";
           document.getElementById("div_cat").style.display = "none";
           document.getElementById("div_linea").style.display = "none";

        };
        if (x=="2x1") {
           document.getElementById("label_desc").style.display = "none";
           document.getElementById("select_desc").style.display = "none";
           document.getElementById("producto2").style.display = "none";
           document.getElementById("div_prod").style.display = "none";
           document.getElementById("div_cat").style.display = "none";
           document.getElementById("div_linea").style.display = "none";
        };
        if (x=="Combo") {
           document.getElementById("label_desc").style.display = "none";
           document.getElementById("select_desc").style.display = "none";
           document.getElementById("producto2").style.display = "block";
           document.getElementById("div_prod").style.display = "block";
           document.getElementById("div_cat").style.display = "block";
           document.getElementById("div_linea").style.display = "block";
           
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

        $("#imgInp").change(function(){
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