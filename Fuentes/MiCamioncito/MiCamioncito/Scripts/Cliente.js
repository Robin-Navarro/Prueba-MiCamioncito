$(document).ready(function () {
    ObtenerClientes();
});

function ObtenerClientes() {
    $.ajax({
        type: "GET",
        url: "https://localhost:44335/api/Cliente",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            let json = JSON.stringify(data);
            let datos = JSON.parse(json);
            FormarTabla(datos)
        },
        error: function (data) {
            console.log(data);
        }
    });
}


function FormarTabla(data) {
    let tabla = "";

    data.forEach(function (element) {
        tabla += "<tr>";
        tabla += "<td>" + element.ID + "</td>";
        tabla += "<td>" + element.NOMBRE + "</td>";
        tabla += "<td>" + element.TIPO + "</td>";
        tabla += "<td>" + element.PORCENTAJE + "</td>";
        tabla += "<td><a class=\"btn\" href=\"#\" role=\"button\" data-bs-toggle=\"modal\" data-bs-target=\"#exampleModal\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-edit\"><path d=\"M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7\"></path><path d=\"M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z\"></path></svg></a></td>";
        tabla += "<td><a class=\"btn\" href=\"#\" role=\"button\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-delete\"><path d=\"M21 4H8l-7 8 7 8h13a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2z\"></path><line x1=\"18\" y1=\"9\" x2=\"12\" y2=\"15\"></line><line x1=\"12\" y1=\"9\" x2=\"18\" y2=\"15\"></line></svg></a></td>";
        tabla += "</tr>";
    });

    $('#BodyTablaCliente').html(tabla);
    console.log(tabla);
}