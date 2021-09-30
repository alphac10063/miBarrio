<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="logica.Persona"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="application/json;charset=iso-8859-1" language="java" pageEncoding="iso-8859-1" session="true"%>
<% // Iniciando respuesta JSON.
    String respuesta = "{";
//Lista de procesos o tareas a realizar
    List<String> tareas = Arrays.asList(new String[]{
        "guardarPersona",
        "eliminarPersona",
        "actualizarPersona",
        "listarPersona"
    });
    String proceso = "" + request.getParameter("proceso");
    Persona p = new Persona();
// Validaciónn de parámetros utilizados en todos los procesos.
    if (tareas.contains(proceso)) {
        respuesta += "\"ok\": true,";
// -------------------------------------------------------------------------------------
//
// -----------------------------------INICIO PROCESOS-----------------------------------
//
// -------------------------------------------------------------------------------------

        if (proceso.equals("guardarPersona")) {
            //Solicitud de parámetros enviados desde el frontend
            //, uso de request.getParameter("nombre parametro")
            // creación de objeto y llamado a método guardar 

            DateFormat formato = new SimpleDateFormat("dd/MM/yyyy");

            int idpersona = Integer.parseInt(request.getParameter("idpersona"));
            int idtipodocumento = Integer.parseInt(request.getParameter("idtipodocumento"));
            String numdocumento = request.getParameter("numdocumento");
            String primernombre = request.getParameter("primernombre");
            String segundonombre = request.getParameter("segundonombre");
            String primerapellido = request.getParameter("primerapellido");
            String segundoapellido = request.getParameter("segundoapellido");
            String sexo = request.getParameter("sexo");
            Date fechanacimiento = formato.parse(request.getParameter("fechanacimiento"));
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            Date fechaalta = formato.parse(request.getParameter("fechaalta"));
            String email = request.getParameter("email");
            String estado = request.getParameter("estado");

            p.llenarPersona(idpersona, idtipodocumento, numdocumento, primernombre, segundonombre, primerapellido, segundoapellido, sexo, fechanacimiento, direccion, telefono, fechaalta, email, estado);

            if (p.guardarPersona()) {
                respuesta += "\"" + proceso + "\": true";
            } else {
                respuesta += "\"" + proceso + "\": false";
            }
        } else if (proceso.equals("eliminarPersona")) {
            //Solicitud de parámetros enviados desde el frontned
            //, uso de request.getParameter("nombre parametro")
            //creación de objeto y llamado a mÃ©todo eliminar

            int idpersona = Integer.parseInt(request.getParameter("idpersona"));

            if (p.eliminarPersona(idpersona)) {
                respuesta += "\"" + proceso + "\": true";
            } else {
                respuesta += "\"" + proceso + "\": false";
            }
        } else if (proceso.equals("listarPersona")) {
            //Solicitud de parámetros enviados desde el frontned
            //, uso de request.getParameter("nombre parametro")
            //creación de objeto y llamado al metodo listar
            try {
                List<Persona> lista = p.listarPersonas();
                respuesta += "\"" + proceso + "\": true,\"Persona\":" + new Gson().toJson(lista);
            } catch (SQLException ex) {
                respuesta += "\"" + proceso + "\": true,\"Persona\":[]";
                Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (proceso.equals("actualizarPersona")) {
            //creación de objeto y llamado al metodo actualizar

            DateFormat formato = new SimpleDateFormat("dd/MM/yyyy");

            int idpersona = Integer.parseInt(request.getParameter("idpersona"));
            int idtipodocumento = Integer.parseInt(request.getParameter("idtipodocumento"));
            String numdocumento = request.getParameter("numdocumento");
            String primernombre = request.getParameter("primernombre");
            String segundonombre = request.getParameter("segundonombre");
            String primerapellido = request.getParameter("primerapellido");
            String segundoapellido = request.getParameter("segundoapellido");
            String sexo = request.getParameter("sexo");
            
            System.out.println(request.getParameter("fechanacimiento"));
            
            Date fechanacimiento = formato.parse(request.getParameter("fechanacimiento"));
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            Date fechaalta = formato.parse(request.getParameter("fechaalta"));
            String email = request.getParameter("email");
            String estado = request.getParameter("estado");

            p.llenarPersona(idpersona, idtipodocumento, numdocumento, primernombre, segundonombre, primerapellido, segundoapellido, sexo, fechanacimiento, direccion, telefono, fechaalta, email, estado);

            if (p.actualizarPersona()) {
                respuesta += "\"" + proceso + "\": true";
            } else {
                respuesta += "\"" + proceso + "\": false";
            }
        }
// ------------------------------------------------------------------------------------- //
// -----------------------------------FIN PROCESOS--------------------------------------
//
// -------------------------------------------------------------------------------------
//
// Proceso desconocido.
    } else {
        respuesta += "\"ok\": false,";
        respuesta += "\"error\": \"INVALID\",";
        respuesta += "\"errorMsg\": \"Lo sentimos, los datos que ha enviado,"
                + " son invÃ¡lidos. Corrijalos y vuelva a intentar por favor.\"";
    }
// Responder como objeto JSON codificación ISO 8859-1.
    respuesta += "}";
    response.setContentType("application/json;charset=iso-8859-1");
    //out.print(respuesta);

    response.getWriter().write(respuesta);
%>