<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDao"%>
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
                                <li class="">
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
                                <li  class="">
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
                    <li><span>Actualizar</span></li>
                </ol>


            </div>
        </header>

        <!-- start: page -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script>
            function actualizar_cliente() {
                var id_cliente = $("#id_cliente").val();
                var cod_dni = $("#cod_dni").val();
                var nombre = $("#nombre").val();
                var correo = $("#correo").val();
                var celular = $("#celular").val();
                var direccion = $("#direccion").val();
                var descripcion_cliente = $("#descripcion_cliente").val();

                $.ajax({
                    url: "ClienteActualizar",
                    data: {
                        id_cliente: id_cliente,
                        cod_dni: cod_dni,
                        nombre: nombre,
                        correo: correo,
                        celular: celular,
                        direccion: direccion,
                        descripcion_cliente: descripcion_cliente

                    },
                    success: function (result) {
                        $("#resultadoCa").html(result);
                    }
                });
            }
        </script>



        <div class="row">
            <div class="col-lg-12">




                <section class="panel">
                    <header class="panel-heading">

                        <h2 class="panel-title">Actualizar Cliente</h2>
                    </header>
                    <div class="panel-body">

                        <div class="col-md-6">



                            <form   id="form" action="actualizarCliente.jsp"  class="form-horizontal"> 


                                <div class="panel-body">
                                    <div class="validation-message">
                                        <ul></ul>
                                    </div>

                                    <%for (Cliente c : ClienteDao.getCliente(Integer.parseInt(request.getParameter("cliente")))) {%>                   
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">D.N.I.</label>

                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-file"></i>
                                            </span>
                                            <input  value="<%=c.getCod_dni()%>" type="text" id="cod_dni" onkeypress="return justNumbers(event);" class="form-control"  placeholder="D.N.I." />
                                            <input  type="hidden" value="<%=c.getId_cliente()%>"  id="id_cliente"  />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Nombres <span class="required">*</span></label>

                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-user"></i>
                                            </span>
                                            <input value="<%=c.getNombre()%>" type="text" id="nombre" class="form-control"  placeholder="Nombres y Apellidos" autofocus required/>
                                        </div>                                    

                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Correo</label>
                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-envelope"></i>
                                            </span>
                                            <input value="<%=c.getCorreo()%>" type="email" id="correo" class="form-control"  placeholder="cliente@correo.com" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Celular</label>
                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-phone-square"></i>
                                            </span>
                                            <input  value="<%=c.getCelular()%>" maxlength="9" id="celular" onkeypress="return justNumbers(event);"   class="form-control" placeholder="___-___-___" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Dirección</label>
                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-home"></i>
                                            </span>
                                            <input  value="<%=c.getDireccion()%>" id="direccion" class="form-control" placeholder=" Ejemplo: Av.Saenz Peña #123" />
                                        </div>
                                    </div>



                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Descripción</label>
                                        <div class="input-group mb-md">
                                            <span class="input-group-addon">
                                                <i class="fa fa-book"></i>
                                            </span>
                                            <textarea  id="descripcion_cliente" rows="6" class="form-control" placeholder="Descripcion" ><%=c.getDescripcion()%></textarea>
                                        </div>
                                    </div>

                                    <% }%>
                                </div>

                                <footer class="panel-footer">
                                    <div class="row">
                                        <div class="col-sm-9 col-sm-offset-3">

                                            <a  onclick=" return validarFormularioCliente2()" class="btn btn-primary" >Actualizar</a>
                                            <button id="btnformulario"  value="" style="border: 0px"></button>
                                            <a id="modal" href="#Modal" data-toggle="modal"></a>



                                        </div>
                                    </div >   
                                </footer>             

                                <div id="Modal" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" style="color: #000;" ><big>Mensaje</big></h4>

                                            </div>
                                            <div id="resultadoCa" >


                                            </div>
                                            <div class="modal-footer">

                                                <a href="listarCliente.jsp" class="btn btn-default" style="color: #006666;">OK</a>
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
</div>


<!-- end: page -->
<%@include file= "piepage.jsp" %>
