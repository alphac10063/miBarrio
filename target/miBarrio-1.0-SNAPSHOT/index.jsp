<page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8">
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <title>miBarrio.com</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
            <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        </head>
        <body>
            <div class="container-fluid" ng-app ="personaApp" ng-controller="personaController as cn">
                <div class="row">
                    <div class="col">
                        <h1 class="display-1">Personas</h1>

                        <button class="btn btn-primary" href="#" id="showList" ng-click="cn.listarPersona()"><i class="fa fa-eye"></i> Listar Personas</button>
                        <button class="btn btn-primary" href="#" id="showAdd"><i class="fa fa-eye"></i>Agregar Persona</button>
                        <br>
                        <div id="listar" style="display: none;" >
                            <div>
                                <table class="table table-striped table-bordered table-hover" id="tbl">
                                    <tr class="p-2 bg-dark text-white">
                                        <td>Id Persona</td>
                                        <td>Tipo Documento</td>
                                        <td>Número Documento</td>
                                        <td>Primer Nombre</td>
                                        <td>Segundo Nombre</td>
                                        <td>Primer Apellido</td>
                                        <td>Segundo Apellido</td>
                                        <td>Genero</td>
                                        <td>Fecha de Nacimiento</td>
                                        <td>Dirección</td>
                                        <td>Teléfono</td>
                                        <td>Fecha Ingreso</td>
                                        <td>Email</td>
                                        <td>Estado</td>
                                        <td>Editar</td>
                                        <td>Eliminar</td>
                                    </tr>
                                    <tr ng-repeat="persona in cn.Persona">
                                        <td>{{persona.idpersona}}</td>
                                        <td>{{persona.idtipodocumento}}</td>
                                        <td>{{persona.numdocumento}}</td>
                                        <td>{{persona.primernombre}}</td>
                                        <td>{{persona.segundonombre}}</td>
                                        <td>{{persona.primerapellido}}</td>
                                        <td>{{persona.segundoapellido}}</td>
                                        <td>{{persona.sexo}}</td>
                                        <td>{{persona.fechanacimiento}}</td>
                                        <td>{{persona.direccion}}</td>
                                        <td>{{persona.telefono}}</td>
                                        <td >{{persona.fechaalta}}</td>
                                        <td>{{persona.email}}</td>
                                        <td>{{persona.estado}}</td>
                                        <td>
                                            <button class="btn btn-warning" ng-click="cn.editaRow($index)">Editar</button> 
                                        </td>
                                        <td>
                                            <button class="btn btn-danger" ng-click="cn.eliminaRow($index)">Eliminar</button>   
                                        </td>
                                    </tr>
                                </table>
                            </div>

                        </div>
                        <div id="agregar" class="container col-md-6" style="display: none;">
                            <h3>Agregar Persona</h3>
                            <form name="personaForm" id="personaForm" >
                                <div class="form-group">
                                    <label>Id Persona</label>
                                    <input type="number" class="form-control" name="idpersona" id="idpersona" ng-model="cn.idpersona" required>
                                </div>    
                                <div class="form-group">
                                    <label>Tipo de Identificación</label>
                                    <select class="form-control" type="number" name="idtipodocumento" id="idtipodocumento" ng-model="cn.idtipodocumento" required>
                                        <option value=""> </option>
                                        <option value="1">Cedula Ciudadanía</option>
                                        <option value="2">Tarjeta Identidad</option>
                                        <option value="3">NIT</option>
                                        <option value="4">Cedula Extranjería</option>
                                    </select>                                    
                                </div> 
                                <div class="form-group">
                                    <label>Número Documento</label>
                                    <input class="form-control" type="text" name="numdocumento" id="numdocumento" ng-model="cn.numdocumento" required>
                                </div>    
                                <div class="form-group">
                                    <label>Primer Nombre</label>
                                    <input class="form-control" type="text" name="primernombre" id="primernombre" ng-model="cn.primernombre" required>
                                </div> 
                                <div class="form-group">
                                    <label>Segundo Nombre</label>
                                    <input class="form-control" type="text" name="segundonombre" id="segundonombre" ng-model="cn.segundonombre" required>
                                </div>    
                                <div class="form-group">
                                    <label>Primer Apellido</label>
                                    <input class="form-control" type="text" name="primerapellido" id="primerapellido" ng-model="cn.primerapellido" required>
                                </div> 
                                <div class="form-group">
                                    <label>Segundo Apellido</label>
                                    <input class="form-control" type="text" name="segundoapellido" id="segundoapellido" ng-model="cn.segundoapellido"required>
                                </div> 
                                <div class="form-group">
                                    <label>Genero</label>
                                    <select type="text" class="form-control"  name="sexo" id="sexo"  ng-model="cn.sexo" required>
                                        <option value=" "> </option>
                                        <option value="F">Femenino</option>
                                        <option value="M">Masculino</option>
                                        <option value="O">Otros</option>
                                    </select>                                     
                                </div> 
                                <div class="form-group">
                                    <label>Fecha de Nacimiento</label>
                                    <input class="form-control" type="date" name="fechanacimiento" id="fechanacimiento" ng-model="cn.fechanacimiento" required>
                                </div> 
                                <div class="form-group">
                                    <label>Dirección</label>
                                    <input class="form-control" type="text" name="direccion" id="direccion" ng-model="cn.direccion" required>
                                </div> 
                                <div class="form-group">
                                    <label>Teléfono</label>
                                    <input class="form-control" type="text" name="telefono" id="telefono" ng-model="cn.telefono"required>
                                </div> 
                                <div class="form-group">
                                    <label>Fecha Ingreso</label>
                                    <input class="form-control" type="date" name="fechaalta" id="fechaalta" ng-model="cn.fechaalta" required>
                                </div> 
                                <div class="form-group">
                                    <label>Email</label>
                                    <input class="form-control" type="text" name="email" id="email" ng-model="cn.email" required>
                                </div> 
                                <div class="form-group">
                                    <label>Estado</label>
                                    <select class="form-control" type="text" name="estado" id="estado" ng-model="cn.estado" required>
                                        <option value=" "> </option>
                                        <option value="A">Activo</option>
                                        <option value="I">Inactivo</option>
                                    </select> 
                                </div>
                                <br>
                                <div class="form-group" name="guardarPersona" id="guardarPersona">
                                    <input class="btn btn-danger" type="submit" ng-click="cn.guardarPersona()" value="Guardar" ng-disabled="">
                                </div> 
                                <div class="form-group" name="actualizarPersona" id="actualizarPersona">
                                    <input class="btn btn-danger" type="submit" ng-click="cn.actualizarPersona()" value="Actualizar" ng-disabled="">
                                </div> 
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </body>

        <script>
            $(document).ready(function () {
                $("#showAdd").on('click', function () {
                    $("#listar").hide();
                    $("#agregar").show();
                    $("#actualizarPersona").hide();
                    $("#guardarPersona").show();
                    return false;
                });
                $("#showList").on('click', function () {
                    $("#listar").show();
                    $("#agregar").hide();
                    return false;
                });
            });
            angular.module('personaApp', [])
                    .controller('personaController', ['$scope', function ($scope) {

                            $scope.user = {};
                            $scope.reset = function (form) {
                                $scope.user = {};
                                if (form) {
                                    form.$setPristine();
                                    form.$setUntouched();
                                }
                            };
                            $scope.reset();
                        }]);
            var personaApp = angular.module('personaApp', []);
            personaApp.controller("personaController", ['$http', personaController]);
            function personaController($http) {

                var cn = this;
                cn.listarPersona = function () {

                    var peticion = {
                        proceso: "listarPersona"
                    };
                    $http({method: 'POST',
                        url: 'Peticiones.jsp',
                        params: peticion}).then(function (res) {
                        cn.Persona = res.data.Persona;
                    });
                };
                cn.editaRow = function (idx) {
                    var id = cn.Persona[idx].idpersona;
                    //alert("id: " + id);
                    document.getElementById('idpersona').value = cn.Persona[idx].idpersona;
                    document.getElementById('idtipodocumento').value = cn.Persona[idx].idtipodocumento;
                    document.getElementById('numdocumento').value = cn.Persona[idx].numdocumento;
                    document.getElementById('primernombre').value = cn.Persona[idx].primernombre;
                    document.getElementById('segundonombre').value = cn.Persona[idx].segundonombre;
                    document.getElementById('primerapellido').value = cn.Persona[idx].primerapellido;
                    document.getElementById('segundoapellido').value = cn.Persona[idx].segundoapellido;
                    document.getElementById('sexo').value = cn.Persona[idx].sexo;
                    document.getElementById('fechanacimiento').value = cn.Persona[idx].fechanacimiento;
                    document.getElementById('direccion').value = cn.Persona[idx].direccion;
                    document.getElementById('telefono').value = cn.Persona[idx].telefono;
                    document.getElementById('fechaalta').value = cn.Persona[idx].fechaalta;
                    document.getElementById('email').value = cn.Persona[idx].email;
                    document.getElementById('estado').value = cn.Persona[idx].estado;

                    document.getElementById('idpersona').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('idtipodocumento').dispatchEvent(new Event("change", {bubbles: false}));
                    document.getElementById('idtipodocumento').dispatchEvent(new Event("change", {bubbles: true}));
                    document.getElementById('numdocumento').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('primernombre').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('segundonombre').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('primerapellido').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('segundoapellido').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('sexo').dispatchEvent(new Event("change", {bubbles: false}));
                    document.getElementById('sexo').dispatchEvent(new Event("change", {bubbles: true}));
                    document.getElementById('fechanacimiento').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('direccion').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('telefono').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('fechaalta').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('email').dispatchEvent(new Event("input", {bubbles: true}));
                    document.getElementById('estado').dispatchEvent(new Event("change", {bubbles: false}));
                    document.getElementById('estado').dispatchEvent(new Event("change", {bubbles: true}));

                    document.getElementById("listar").style.display = "none";
                    document.getElementById("agregar").style.display = "";

                    document.getElementById("guardarPersona").style.display = "none";
                    document.getElementById("actualizarPersona").style.display = "";

                };

                cn.eliminaRow = function (idx) {
                    var id = cn.Persona[idx].idpersona;
                    var peticion = {
                        proceso: "eliminarPersona",
                        idpersona: id
                    };
                    $http({method: 'POST',
                        url: 'Peticiones.jsp',
                        params: peticion}).then(function (res) {
                        if (res.data.ok === true) {
                            alert("Eliminado con éxito");
                            cn.Persona.splice(idx, 1);
                        } else {
                            alert(res.data.errormsg);
                        }
                    });
                };
                cn.guardarPersona = function () {

                    var Persona = {
                        proceso: "guardarPersona",
                        idpersona: cn.idpersona,
                        idtipodocumento: cn.idtipodocumento,
                        numdocumento: cn.numdocumento,
                        primernombre: cn.primernombre,
                        segundonombre: cn.segundonombre,
                        primerapellido: cn.primerapellido,
                        segundoapellido: cn.segundoapellido,
                        sexo: cn.sexo,
                        fechanacimiento: cn.fechanacimiento,
                        direccion: cn.direccion,
                        telefono: cn.telefono,
                        fechaalta: cn.fechaalta,
                        email: cn.email,
                        estado: cn.estado
                    };
                    $http({method: 'POST',
                        url: 'Peticiones.jsp',
                        params: Persona}).then(function (res) {
                        if (res.data.ok === true) {
                            if (res.data[Persona.proceso] === true) {
                                alert("Guardado con éxito");
                                document.getElementById('personaForm').reset();
                            } else {
                                alert("Por favor vefifique sus datos");
                            }
                        } else {
                            alert(res.data.errorMsg);
                        }
                    });
                };

                cn.actualizarPersona = function () {

                    var Persona = {
                        proceso: "actualizarPersona",
                        idpersona: cn.idpersona,
                        idtipodocumento: cn.idtipodocumento,
                        numdocumento: cn.numdocumento,
                        primernombre: cn.primernombre,
                        segundonombre: cn.segundonombre,
                        primerapellido: cn.primerapellido,
                        segundoapellido: cn.segundoapellido,
                        sexo: cn.sexo,
                        fechanacimiento: cn.fechanacimiento,
                        direccion: cn.direccion,
                        telefono: cn.telefono,
                        fechaalta: cn.fechaalta,
                        email: cn.email,
                        estado: cn.estado
                    };
                    $http({method: 'POST',
                        url: 'Peticiones.jsp',
                        params: Persona}).then(function (res) {
                        if (res.data.ok === true) {
                            if (res.data[Persona.proceso] === true) {
                                alert("Guardado con éxito");
                                document.getElementById('personaForm').reset();
                            } else {
                                alert("Por favor vefifique sus datos");
                            }
                        } else {
                            alert(res.data.errorMsg);
                        }
                    });
                };

            }
        </script>
    </html>