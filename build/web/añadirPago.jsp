<%@page import="java.text.DecimalFormat"%>
<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDao"%>
<%@page import="dao.PagoDao"%>
<%@page import="modelo.Pago"%>
<%@page import="dao.VentaDao"%>
<%@page import="modelo.Venta"%>
<div id="ModalAñadir" class="modal fade">
   
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" align="left" style="color: #002b36">Añadir Pago</h4>
                    </div>
                    <div class="modal-body">
                                                                                                                         


<div class="panel-body">
<div class="validation-message">
        <ul></ul>
</div>

<div class="form-group">
        <label class="col-sm-3 control-label">Fecha<span class="required">*</span></label>

        <div class="input-group mb-md">
            <span class="input-group-addon">
                    <i class="fa fa-calendar"></i>
            </span>

            <input  type="text" id="fecha_pago"   data-plugin-datepicker="" class="form-control" placeholder="Fecha de la Venta"  autocomplete="off" autofocus required>
        </div>
</div>


          <input  type="hidden" id="id_cliente" value="<%=request.getParameter("cliente") %>" />


<div class="form-group">
        <label class="col-sm-3 control-label">Pago Diario<span class="required">*</span></label>
        <div class="input-group mb-md">
                <span class="input-group-addon">
                    <i class="fa fa-navicon"></i>
               </span>
            <input type="text" id="pago_diario" onkeypress="return justNumbers(event);" onkeyup="saldo()"  class="form-control" placeholder="S/. 0.00" autocomplete="off" autofocus required/>
        </div>
</div>


<div class="form-group">
        <label class="col-sm-3 control-label">Saldo Actual<span class="required">*</span></label>
        <div class="input-group mb-md">
                <span class="input-group-addon">
                    <i class="fa fa-dollar"></i>
               </span>
            <input type="text" id="saldo_total"  class="form-control" placeholder="saldo" readonly />
        </div>
</div>
  <div class="form-group">
        <label class="col-sm-3 control-label">Saldo Anterior<span class="required">*</span></label>
        <div class="input-group mb-md">
                <span class="input-group-addon">
                    <i class="fa fa-dollar"></i>
               </span>
             <% DecimalFormat df = new DecimalFormat("0.00");%>
             <%for(Venta v:VentaDao.total_cliente(Integer.parseInt(request.getParameter("cliente").trim()))) {%>
                <% for(Pago p:PagoDao.MontoCancelado(Integer.parseInt(request.getParameter("cliente")))){ %>
                <input type="text" id="total"  value="<%=df.format(v.getTotal_venta()-p.getSaldo_total()) %>" class="form-control" placeholder="Total" readonly/>
                  <% }%>
                 <% }%>
        </div>
</div>

     

<script> 

    function saldo(){
                m1 = document.getElementById("pago_diario").value;
                m2 = document.getElementById("total").value;
                r = m2-m1;
                document.getElementById("saldo_total").value = Math.round(r*100)/100;

                                         }

</script>
<script>
function registrar_pago(){

var fecha_pago=$("#fecha_pago").val();
var pago_diario=$("#pago_diario").val();
var saldo_total=$("#saldo_total").val();
var id_cliente=$("#id_cliente").val();


$.ajax({
url: "PagoControl",
data: {
fecha_pago:fecha_pago,
pago_diario:pago_diario,
saldo_total:saldo_total,
id_cliente:id_cliente


},

success: function( result ) {
$( "#resultadoP" ).html(result);
location.replace("listarPago.jsp?cliente="+id_cliente);
}
});

}
</script>




</div>



         </div>

            <div class="modal-footer">
                
                    
                    <button   onclick="registrar_pago()" class="btn btn-primary" >Registrar</button>
                    
                    
               

                <button type="button" class="btn btn-facebook" data-dismiss="modal">Cerrar</button>
                
                 

            </div>

        </div>
    </div>

</div>  
               <a href="administrarPagos.jsp"></a>