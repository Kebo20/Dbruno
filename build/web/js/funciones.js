function justNumbers(e)
{
    var keynum = window.event ? window.event.keyCode : e.which;
    if ((keynum == 8) || (keynum == 46))
        return true;

    return /\d/.test(String.fromCharCode(keynum));
}
var $tablebutton = $('#tablebutton');
$tablebutton.DataTable({
    language: {
        "decimal": "",
        "emptyTable": "No hay datos",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
        "infoEmpty": "Mostrando 0 al 0 de 0 datos",
        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
        "infoPostFix": "",
        "thousands": ",",
        "lengthMenu": "Mostrar _MENU_ Entradas",
        "loadingRecords": "Cargando...",
        "processing": "Procesando...",
        "search": "Buscar:",
        "zeroRecords": "Sin resultados encontrados",
        "paginate": {
            "first": "Primero",
            "last": "Ultimo",
            "next": "Siguiente",
            "previous": "Anterior"
        }
    },

    sDom: "<'text-right mb-md'T>" + $.fn.dataTable.defaults.sDom,
    oTableTools: {
        sSwfPath: $tablebutton.data('swf-path'),
        aButtons: [
            {
                sExtends: 'pdf',
                sButtonText: 'PDF'
            },

            {
                sExtends: 'xls',
                sButtonText: 'Excel'
            },
            {
                sExtends: 'print',
                sButtonText: 'Imprimir',
                sInfo: 'Presione ctrl + p para imprimir'
            }
        ]
    }


});


var $table = $('#table');
$table.DataTable({
    language: {
        "decimal": "",
        "emptyTable": "No hay datos",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ datos",
        "infoEmpty": "Mostrando 0 al 0 de 0 datos",
        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
        "infoPostFix": "",
        "thousands": ",",
        "lengthMenu": "Mostrar _MENU_ datos",
        "loadingRecords": "Cargando...",
        "processing": "Procesando...",
        "search": "Buscar:",
        "zeroRecords": "Sin resultados encontrados",
        "paginate": {
            "first": "Primero",
            "last": "Ultimo",
            "next": "Siguiente",
            "previous": "Anterior"
        }
    }


});


$('#tableVenta').DataTable({
    dom: 'Bfrtip',
    responsive: true,
    language: {
        "decimal": "",
        "emptyTable": "No hay datos",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ datos",
        "infoEmpty": "Mostrando 0 datos",
        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
        "infoPostFix": "",
        "thousands": ",",
        "lengthMenu": "Mostrar _MENU_ datos",
        "loadingRecords": "Cargando...",
        "processing": "Procesando...",
        "search": "Buscar:",
        "zeroRecords": "Sin resultados encontrados",
        "paginate": {
            "first": "Primero",
            "last": "Ultimo",
            "next": "Siguiente",
            "previous": "Anterior"
        }
    },
    "order": []
    , sDom: "<'text-right mb-md'T>" + $.fn.dataTable.defaults.sDom,
    oTableTools: {
        sSwfPath: $tablebutton.data('swf-path'),
        aButtons: [
            {
                sExtends: 'pdf',
                sButtonText: 'PDF'
            },

            {
                sExtends: 'xls',
                sButtonText: 'Excel'
            },
            {
                sExtends: 'print',
                sButtonText: 'Imprimir',
                sInfo: 'Presione ctrl + p para imprimir'
            }
        ]
    },
    ajax: {
        url: "VentaListar",
        method: "post",
        dataSrc: "datos"

    },
    columns: [
        {data: "fecha"},
        {data: "cliente"},
        {data: "pollos"},
        {data: "descripcion"},
        {data: "cantidad"},
        {data: "precio"},
        {data: "total"},
        {data: "eliminar"}
    ]

});



function validarFormularioCliente() {

    if ($("#nombre").val() == "") {

        $('#btnformulario').click();



    } else {
        registrar_cliente();
        $('#modal').click();

    }

}

function validarFormularioCompra() {


    if ($("#fecha_compra").val() == "" || $("#num_guia").val() == "" || $("#num_pollos").val() == "" || $("#precio_kilo").val() == "" || $("#can_kilo").val() == "" || $("#total_compra").val() == "") {

        $('#btnformulario').click();

    } else {
        registrar_compra();
        $('#modal').click();

    }



}

function validarFormularioVenta() {


    if ($("#fecha_venta").val() == "" || $("#num_pollos").val() == "" || $("#precio_kilo").val() == "" || $("#can_kilo").val() == "" || $("#total_venta").val() == "") {

        $('#btnformulario').click();

    } else {
        registrar_venta();
        $('#modal').click();

    }



}


function validarFormularioVenta2() {


    if ($("#fecha_venta").val() == "" || $("#total_venta").val() == "") {

        $('#btnformulario').click();

    } else {
        registrar_venta2();
        $('#modal').click();

    }



}

function validarFormularioCliente2() {

    if ($("#nombre").val() == "") {

        $('#btnformulario').click();

    } else {
        actualizar_cliente();
        $('#modal').click();

        $('#btnreset').click();
    }
}
