package logica;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import persistencia.ConexionBD;

/**
 * Java bean for entity "persona" <br>
 * Contains only "wrapper types" (no primitive types) <br>
 * Can be used both as a "web form" and "persistence record" <br>
 *
 */
public class Persona {

    private int idpersona; // int // Id or Primary Key
    private int idtipodocumento;  // int 
    private String numdocumento;  // String 
    private String primernombre;  // String 
    private String segundonombre;  // String 
    private String primerapellido;  // String 
    private String segundoapellido;  // String 
    private String sexo;  // String 
    private String fechanacimiento;  // Date 
    private String direccion;  // String 
    private String telefono;  // String 
    private String fechaalta;  // Date 
    private String email;  // String 
    private String estado;  // String 

    /**
     * Default constructor
     */
    public Persona() {

    }

    //----------------------------------------------------------------------
    // GETTER(S) & SETTER(S) FOR ID OR PRIMARY KEY 
    //----------------------------------------------------------------------
    /**
     * Set the "idpersona" field value This field is mapped on the database
     * column "idPersona" ( type "INT", NotNull : true )
     *
     * @param idpersona
     */
    public void setIdpersona(int idpersona) {
        this.idpersona = idpersona;
    }

    /**
     * Get the "idpersona" field value This field is mapped on the database
     * column "idPersona" ( type "INT", NotNull : true )
     *
     * @return the field value
     */
    public int getIdpersona() {
        return this.idpersona;
    }

    //----------------------------------------------------------------------
    // GETTER(S) & SETTER(S) FOR OTHER DATA FIELDS 
    //----------------------------------------------------------------------
    /**
     * Set the "idtipodocumento" field value This field is mapped on the
     * database column "idTipoDocumento" ( type "INT", NotNull : true )
     *
     * @param idtipodocumento
     */
    public void setIdtipodocumento(int idtipodocumento) {
        this.idtipodocumento = idtipodocumento;
    }

    /**
     * Get the "idtipodocumento" field value This field is mapped on the
     * database column "idTipoDocumento" ( type "INT", NotNull : true )
     *
     * @return the field value
     */
    public int getIdtipodocumento() {
        return this.idtipodocumento;
    }

    /**
     * Set the "numdocumento" field value This field is mapped on the database
     * column "numDocumento" ( type "VARCHAR", NotNull : true )
     *
     * @param numdocumento
     */
    public void setNumdocumento(String numdocumento) {
        this.numdocumento = numdocumento;
    }

    /**
     * Get the "numdocumento" field value This field is mapped on the database
     * column "numDocumento" ( type "VARCHAR", NotNull : true )
     *
     * @return the field value
     */
    public String getNumdocumento() {
        return this.numdocumento;
    }

    /**
     * Set the "primernombre" field value This field is mapped on the database
     * column "primerNombre" ( type "VARCHAR", NotNull : true )
     *
     * @param primernombre
     */
    public void setPrimernombre(String primernombre) {
        this.primernombre = primernombre;
    }

    /**
     * Get the "primernombre" field value This field is mapped on the database
     * column "primerNombre" ( type "VARCHAR", NotNull : true )
     *
     * @return the field value
     */
    public String getPrimernombre() {
        return this.primernombre;
    }

    /**
     * Set the "segundonombre" field value This field is mapped on the database
     * column "segundoNombre" ( type "VARCHAR", NotNull : true )
     *
     * @param segundonombre
     */
    public void setSegundonombre(String segundonombre) {
        this.segundonombre = segundonombre;
    }

    /**
     * Get the "segundonombre" field value This field is mapped on the database
     * column "segundoNombre" ( type "VARCHAR", NotNull : true )
     *
     * @return the field value
     */
    public String getSegundonombre() {
        return this.segundonombre;
    }

    /**
     * Set the "primerapellido" field value This field is mapped on the database
     * column "primerApellido" ( type "VARCHAR", NotNull : true )
     *
     * @param primerapellido
     */
    public void setPrimerapellido(String primerapellido) {
        this.primerapellido = primerapellido;
    }

    /**
     * Get the "primerapellido" field value This field is mapped on the database
     * column "primerApellido" ( type "VARCHAR", NotNull : true )
     *
     * @return the field value
     */
    public String getPrimerapellido() {
        return this.primerapellido;
    }

    /**
     * Set the "segundoapellido" field value This field is mapped on the
     * database column "segundoApellido" ( type "VARCHAR", NotNull : true )
     *
     * @param segundoapellido
     */
    public void setSegundoapellido(String segundoapellido) {
        this.segundoapellido = segundoapellido;
    }

    /**
     * Get the "segundoapellido" field value This field is mapped on the
     * database column "segundoApellido" ( type "VARCHAR", NotNull : true )
     *
     * @return the field value
     */
    public String getSegundoapellido() {
        return this.segundoapellido;
    }

    /**
     * Set the "sexo" field value This field is mapped on the database column
     * "sexo" ( type "VARCHAR", NotNull : true )
     *
     * @param sexo
     */
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    /**
     * Get the "sexo" field value This field is mapped on the database column
     * "sexo" ( type "VARCHAR", NotNull : true )
     *
     * @return the field value
     */
    public String getSexo() {
        return this.sexo;
    }

    /**
     * Set the "fechanacimiento" field value This field is mapped on the
     * database column "fechaNacimiento" ( type "DATE", NotNull : true )
     *
     * @param fechanacimiento
     */
    public void setFechanacimiento(String fechanacimiento) {
        this.fechanacimiento = fechanacimiento;
    }

    /**
     * Get the "fechanacimiento" field value This field is mapped on the
     * database column "fechaNacimiento" ( type "DATE", NotNull : true )
     *
     * @return the field value
     */
    public String getFechanacimiento() {
        return this.fechanacimiento;
    }

    /**
     * Set the "direccion" field value This field is mapped on the database
     * column "direccion" ( type "VARCHAR", NotNull : true )
     *
     * @param direccion
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * Get the "direccion" field value This field is mapped on the database
     * column "direccion" ( type "VARCHAR", NotNull : true )
     *
     * @return the field value
     */
    public String getDireccion() {
        return this.direccion;
    }

    /**
     * Set the "telefono" field value This field is mapped on the database
     * column "telefono" ( type "VARCHAR", NotNull : true )
     *
     * @param telefono
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * Get the "telefono" field value This field is mapped on the database
     * column "telefono" ( type "VARCHAR", NotNull : true )
     *
     * @return the field value
     */
    public String getTelefono() {
        return this.telefono;
    }

    /**
     * Set the "fechaalta" field value This field is mapped on the database
     * column "fechaAlta" ( type "DATE", NotNull : true )
     *
     * @param fechaalta
     */
    public void setFechaalta(String fechaalta) {
        this.fechaalta = fechaalta;
    }

    /**
     * Get the "fechaalta" field value This field is mapped on the database
     * column "fechaAlta" ( type "DATE", NotNull : true )
     *
     * @return the field value
     */
    public String getFechaalta() {
        return this.fechaalta;
    }

    /**
     * Set the "email" field value This field is mapped on the database column
     * "eMail" ( type "VARCHAR", NotNull : true )
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Get the "email" field value This field is mapped on the database column
     * "eMail" ( type "VARCHAR", NotNull : true )
     *
     * @return the field value
     */
    public String getEmail() {
        return this.email;
    }

    /**
     * Set the "estado" field value This field is mapped on the database column
     * "estado" ( type "VARCHAR", NotNull : true )
     *
     * @param estado
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * Get the "estado" field value This field is mapped on the database column
     * "estado" ( type "VARCHAR", NotNull : true )
     *
     * @return the field value
     */
    public String getEstado() {
        return this.estado;
    }

    public void llenarPersona(int idpersona, int idtipodocumento, String numdocumento, String primernombre, String segundonombre, String primerapellido, String segundoapellido, String sexo, String fechanacimiento, String direccion, String telefono, String fechaalta, String email, String estado) {
        this.idpersona = idpersona;
        this.idtipodocumento = idtipodocumento;
        this.numdocumento = numdocumento;
        this.primernombre = primernombre;
        this.segundonombre = segundonombre;
        this.primerapellido = primerapellido;
        this.segundoapellido = segundoapellido;
        this.sexo = sexo;
        this.fechanacimiento = fechanacimiento;
        this.direccion = direccion;
        this.telefono = telefono;
        this.fechaalta = fechaalta;
        this.email = email;
        this.estado = estado;
    }

    //----------------------------------------------------------------------
    // Guardar Persona METHOD
    //----------------------------------------------------------------------        
    public boolean guardarPersona() throws ParseException {
        System.out.println("Guardar Persona");
        ConexionBD conexion = new ConexionBD();

        String SQL_INSERT = "Insert into persona ( idPersona, idTipoDocumento, numDocumento, primerNombre, segundoNombre, primerApellido, segundoApellido, sexo, fechaNacimiento, direccion, telefono, fechaAlta, eMail, estado ) values (";
        SQL_INSERT += this.idpersona;
        SQL_INSERT += ", " + this.idtipodocumento;
        SQL_INSERT += ", '" + this.numdocumento;
        SQL_INSERT += "', '" + this.primernombre;
        SQL_INSERT += "', '" + this.segundonombre;
        SQL_INSERT += "', '" + this.primerapellido;
        SQL_INSERT += "', '" + this.segundoapellido;
        SQL_INSERT += "', '" + this.sexo;
        SQL_INSERT += "', '" + this.fechanacimiento + "'";
        SQL_INSERT += ", '" + this.direccion;
        SQL_INSERT += "', '" + this.telefono;
        SQL_INSERT += "', '" + this.fechaalta + "'";
        SQL_INSERT += ", '" + this.email;
        SQL_INSERT += "', '" + this.estado + "')";

        System.out.println(SQL_INSERT);

        if (conexion.setAutoCommitBD(false)) {
            if (conexion.insertarBD(SQL_INSERT)) {
                conexion.commitBD();
                conexion.cerrarConexion();
                return true;
            } else {
                conexion.rollbackBD();
                conexion.cerrarConexion();
                return false;
            }
        } else {
            conexion.cerrarConexion();
            return false;
        }
    }

    //----------------------------------------------------------------------
    // Eliminar Persona METHOD
    //----------------------------------------------------------------------        
    public boolean eliminarPersona(int idpersona) {
        System.out.println("Eliminar Persona");
        ConexionBD conexion = new ConexionBD();

        String SQL_DELETE = "delete from persona where idPersona = " + idpersona;

        System.out.println(SQL_DELETE);

        if (conexion.setAutoCommitBD(false)) {
            if (conexion.insertarBD(SQL_DELETE)) {
                conexion.commitBD();
                conexion.cerrarConexion();
                return true;
            } else {
                conexion.rollbackBD();
                conexion.cerrarConexion();
                return false;
            }
        } else {
            conexion.cerrarConexion();
            return false;
        }
    }

    //----------------------------------------------------------------------
    // Actualizar Persona METHOD
    //----------------------------------------------------------------------    
    public boolean actualizarPersona() {
        System.out.println("Actualizar Persona");
        ConexionBD conexion = new ConexionBD();

        String SQL_UPDATE = "Update persona set idTipoDocumento = '" + this.idtipodocumento + "'";
        SQL_UPDATE += ", numDocumento = '" + this.numdocumento + "'";
        SQL_UPDATE += ", primerNombre = '" + this.primernombre + "'";
        SQL_UPDATE += ", segundoNombre = '" + this.segundonombre + "'";
        SQL_UPDATE += ", primerApellido = '" + this.primerapellido + "'";
        SQL_UPDATE += ", segundoApellido = '" + this.segundoapellido + "'";
        SQL_UPDATE += ", sexo = '" + this.sexo + "'";
        SQL_UPDATE += ", fechaNacimiento = '" + this.fechanacimiento + "'";
        SQL_UPDATE += ", direccion = '" + this.direccion + "'";
        SQL_UPDATE += ", telefono = '" + this.telefono + "'";
        SQL_UPDATE += ", fechaAlta = '" + this.fechaalta + "'";
        SQL_UPDATE += ", eMail = '" + this.email + "'";
        SQL_UPDATE += ", estado = '" + this.estado + "'";
        SQL_UPDATE += " where idPersona =" + this.idpersona;

        if (conexion.setAutoCommitBD(false)) {
            if (conexion.insertarBD(SQL_UPDATE)) {
                conexion.commitBD();
                conexion.cerrarConexion();
                return true;
            } else {
                conexion.rollbackBD();
                conexion.cerrarConexion();
                return false;
            }
        } else {
            conexion.cerrarConexion();
            return false;
        }
    }

    //----------------------------------------------------------------------
    // Listar Personas METHOD
    //----------------------------------------------------------------------   
    public List<Persona> listarPersonas() throws SQLException {
        System.out.println("Listar Personas");
        ConexionBD conexion = new ConexionBD();

        List<Persona> listarPersonas = new ArrayList<>();

        String SQL_SELECT_ALL = "Select idPersona, idTipoDocumento, numDocumento, primerNombre, segundoNombre, primerApellido, segundoApellido, sexo, fechaNacimiento, direccion, telefono, fechaAlta, eMail, estado from persona Order by idPersona asc";

        ResultSet rs = conexion.consultarBD(SQL_SELECT_ALL);

        Persona p;

        while (rs.next()) {
            p = new Persona();
            p.setIdpersona(rs.getInt("idPersona"));
            p.setIdtipodocumento(rs.getInt("idtipodocumento"));
            p.setNumdocumento(rs.getString("numdocumento"));
            p.setPrimernombre(rs.getString("primernombre"));
            p.setSegundonombre(rs.getString("segundonombre"));
            p.setPrimerapellido(rs.getString("primerapellido"));
            p.setSegundoapellido(rs.getString("segundoapellido"));
            p.setSexo(rs.getString("sexo"));
            p.setFechanacimiento(rs.getString("fechanacimiento"));
            p.setDireccion(rs.getString("direccion"));
            p.setTelefono(rs.getString("telefono"));
            p.setFechaalta(rs.getString("fechaalta"));
            p.setEmail(rs.getString("email"));
            p.setEstado(rs.getString("estado"));

            listarPersonas.add(p);
        }
        conexion.cerrarConexion();
        return listarPersonas;
    }

    public Persona getPersona() throws SQLException {
        System.out.println("Ver Persona");
        ConexionBD conexion = new ConexionBD();

        String SQL_SELECT = "select idPersona, idTipoDocumento, numDocumento, primerNombre, segundoNombre, primerApellido, segundoApellido, sexo, fechaNacimiento, direccion, telefono, fechaAlta, eMail, estado from persona where idPersona = " + this.idpersona;

        ResultSet rs = conexion.consultarBD(SQL_SELECT);

        if (rs.next()) {
            this.idpersona = rs.getInt("idPersona");
            this.idtipodocumento = rs.getInt("idtipodocumento");
            this.numdocumento = rs.getString("numdocumento");
            this.primernombre = rs.getString("primernombre");
            this.segundonombre = rs.getString("segundonombre");
            this.primerapellido = rs.getString("primerapellido");
            this.segundoapellido = rs.getString("segundoapellido");
            this.sexo = rs.getString("sexo");
            this.fechanacimiento = rs.getString("fechanacimiento");
            this.direccion = rs.getString("direccion");
            this.telefono = rs.getString("telefono");
            this.fechaalta = rs.getString("fechaalta");
            this.email = rs.getString("email");
            this.estado = rs.getString("estado");
            conexion.cerrarConexion();
            return this;
        } else {
            conexion.cerrarConexion();
            return null;
        }
    }

    //----------------------------------------------------------------------
    // toString METHOD
    //----------------------------------------------------------------------
    @Override
    public String toString() {

        String cadena;
        cadena = "Persona{";
        cadena += "idpersona=" + idpersona;
        cadena += ", idtipodocumento=" + idtipodocumento;
        cadena += ", numdocumento=" + numdocumento;
        cadena += ", primernombre=" + primernombre;
        cadena += ", segundonombre=" + segundonombre;
        cadena += ", primerapellido=" + primerapellido;
        cadena += ", segundoapellido=" + segundoapellido;
        cadena += ", sexo=" + sexo;
        cadena += ", fechanacimiento=" + fechanacimiento;
        cadena += ", direccion=" + direccion;
        cadena += ", telefono=" + telefono;
        cadena += ", fechaalta=" + fechaalta;
        cadena += ", email=" + email;
        cadena += ", estado=" + estado;
        cadena += "}";
        return cadena;
    }
}
