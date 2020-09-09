<%@page session="true" %>
<%@include file= "encabezado.jsp" %>
<!-- end: header -->

<div class="inner-wrapper">
    <!-- start: sidebar -->
    <aside id="sidebar-left" class="sidebar-left">

        <div class="sidebar-header">
            <div class="sidebar-title">
                <b style="color:#ABB4BE">NAVEGACIÓN</b>
            </div>
            <div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
                <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
            </div>
        </div>

        <div class="nano">
            <div class="nano-content">
                <nav id="menu" class="nav-main" role="navigation">
                    <ul class="nav nav-main">
                        <li>
                            <a href="index.jsp">
                                <i class="fa fa-home" aria-hidden="true"></i>
                                <span>Inicio</span>
                            </a>
                        </li>




                        <li class="nav-parent nav-expanded nav-active">
                            <a>
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <span>Clientes</span>
                            </a>
                            <ul class="nav nav-children">
                                <li class="nav-active">
                                    <a href="registrarCliente.jsp">
                                        Registrar
                                    </a>
                                </li>
                                <li>

                                    <a href="listarCliente.jsp">
                                        Listar
                                    </a>

                                </li>

                            </ul>
                        </li>

                        <li class="nav-parent">
                            <a>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <span>Compras</span>
                            </a>
                            <ul class="nav nav-children">
                                <li class="">
                                    <a href="registrarCompra.jsp">
                                        Registrar
                                    </a>
                                </li>
                                <li>
                                    <a href="listarCompra.jsp">
                                        Listar
                                    </a>
                                </li>

                                <li class="">
                                    <a href="rCompras.jsp">
                                        Reportes
                                    </a>
                                </li>

                            </ul>
                        </li>

                        <li class="nav-parent">
                            <a>
                                <i class="fa fa-dollar" aria-hidden="true"></i>
                                <span>Ventas</span>
                            </a>
                            <ul class="nav nav-children">
                                <li class="">
                                    <a href="registrarVenta.jsp">
                                        Registrar
                                    </a>
                                </li>
                                <li>
                                    <a href="listarVenta.jsp">
                                        Listar
                                    </a>
                                </li>

                                <li  class="">
                                    <a href="rVentas.jsp">
                                        Reportes
                                    </a>
                                </li>

                            </ul>
                        </li>
                        <li class="nav-parent">
                            <a>
                                <i class="fa fa-credit-card" aria-hidden="true"></i>
                                <span>Pagos</span>
                            </a>
                            <ul class="nav nav-children">
                                <li class="">
                                    <a href="administrarPagos.jsp">
                                        Registrar
                                    </a>
                                </li>
                                <li class="">
                                    <a href="listarClientesPagos.jsp">
                                        Listar
                                    </a>
                                </li>
                                <li class="">
                                    <a href="rPago.jsp">
                                        Reportes
                                    </a>
                                </li>


                            </ul>
                        </li>








                    </ul>
                </nav>

                <hr class="separator" />



                <hr class="separator" />


            </div>

        </div>

    </aside>
    <!-- end: sidebar -->




    <section role="main" class="content-body">
        <header class="page-header">
            <h2>Clientes</h2>

            <div class="right-wrapper pull-right">
                <ol class="breadcrumbs">
                    <li>
                        <a href="index.jsp">
                            <i class="fa fa-home"></i>
                        </a>
                    </li>
                    <li><span>Clientes</span></li>
                    <li><span>Registrar</span></li>
                </ol>


            </div>
        </header>

        <!-- start: page -->
        <script src="js/jquery-3.3.1.min.js">

        </script>


        <script>


           function registrar_cliente(){
                        
                        var cod_dni=$("#cod_dni").val();
                        var nombre=$("#nombre").val();
                        var correo=$("#correo").val();
                        var celular=$("#celular").val();
                        var direccion=$("#direccion").val();
                        var descripcion_cliente=$("#descripcion_cliente").val();
                        
                        $.ajax({
                            url: "ClienteControl",
                            data: {
                              cod_dni:cod_dni,
                              nombre:nombre,
                              correo:correo,
                              celular:celular,
                              direccion:direccion,
                              descripcion_cliente:descripcion_cliente
                              
                            },
                            success: function( result ) {
                              $( "#resultadoC" ).html(result);
                            }
                          });
                               }

        </script>




        <div class="row">
            <div class="col-lg-12">




                <section class="panel">
                    <header class="panel-heading">

                        <h2 class="panel-title">Registrar Cliente</h2>
                    </header>
                    <div class="panel-body">

                        <div class="col-md-6">



                            <form   id="formc"  class="form-horizontal" enctype="multipart/form-data"> 


                                <div class="panel-body">
                                    <div class="validation-message">
                                        <ul></ul>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">D.N.I.</label>

                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-file"></i>
                                            </span>
                                            <input type="text" id="cod_dni" maxlength="8" name="cod_dni" onkeypress="return justNumbers(event);" class="form-control"  placeholder="D.N.I." autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Nombres <span class="required">*</span></label>

                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-user"></i>
                                            </span>
                                            <input type="text" id="nombre" name="nombre" class="form-control"  placeholder="Nombres y Apellidos" autocomplete="off" autofocus required/>
                                        </div>                                    

                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Correo</label>
                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-envelope"></i>
                                            </span>
                                            <input type="text" id="correo" name="correo" class="form-control"  placeholder="cliente@correo.com" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Celular</label>
                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-phone-square"></i>
                                            </span>
                                            <input  id="celular"  maxlength="9"  name="celular" onkeypress="return justNumbers(event);"  class="form-control" placeholder="999 999 999" value="" autocomplete="off"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Dirección</label>
                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-home"></i>
                                            </span>
                                            <input   id="direccion" name="direccion" type="text" class="form-control" placeholder=" Ejemplo: Av.Saenz Peña #123" autocomplete="off"/>
                                        </div>
                                    </div>



                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Descripción</label>
                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-book"></i>
                                            </span>
                                            <textarea id="descripcion_cliente" name="descripcion_cliente" rows="6" class="form-control" placeholder="Descripcion" ></textarea>
                                        </div>
                                    </div>



                                </div>

                                <footer class="panel-footer">
                                    <div class="row">
                                        <div class="col-sm-9 col-sm-offset-3">


                                            <a  onclick="return validarFormularioCliente()" class="btn btn-primary">Registrar</a>

                                            <button id="btnformulario"  value="" style="border: 0px"></button>
                                            <a id="modal" href="#Modal" data-toggle="modal"></a>


                                        </div>
                                    </div >   
                                </footer>             
                                <a id="modal" href="#Modal" data-toggle="modal"></a>
                                <div id="Modal" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" style="color: #000">Mensaje</h4>
                                            </div>
                                            <div  id="resultadoC" >




                                            </div>

                                        </div>
                                    </div>
                                </div>


                            </form>                             
                        </div>


                    </div>


            </div>

    </section>


</div>


<script src="js/funciones.js"></script>                                                                                



<!-- end: page -->
<%@include file= "piepage.jsp" %>