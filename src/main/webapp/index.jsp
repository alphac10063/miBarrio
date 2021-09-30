<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>miBarrio.com</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular.min.js"></script>
        <style>
            .messages{
                color: #0099ff;
            }
            form.ng-submitted input.ng-invalid{
                
            }
            form_input.ng-submitted input.ng-invalid{
                
            }
        </style>
        <script>
            var listarApp = angular.module('listarApp', []);
            listarApp.controller("listController", function ($scope, $http) {
            var onSuccess = function (data, status, headers, config) {
                $scope.data = data;
            };
            var onError = function (data, status, headers, config) {
                $scope.error = status;
            };
            var promise = $http.get("Peticiones.jsp?proceso=listarPersona");
                promise.success(onSuccess);
                promise.error(onError);
            });
        </script>

        <script>
            var guardarApp = angular.module('guardarApp', []);
            guardarApp.controller("addController", function ($scope, $http) {
                var vm = this;
                vm.fdatos = {};
                
                var onSuccess = function (data, status, headers, config) {
                        $scope.data = data;
                    };
                var onError = function (data, status, headers, config) {
                    $scope.error = status;
                
                               
                vm.Guardar = function(){
                    $http.post("Peticiones.jsp?proceso=guardarPersona", vm.fdatos).success(function(res){
                        console.log(res);
                    };
                };
                
                promise.success(onSuccess);
                promise.error(onError);
            });
        </script>

        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
            $("#showAdd").on('click', function () {
            $("#listar").hide();
            $("#agregar").show();
            return false;
            });
            $("#showList").on('click', function () {
            $("#listar").show();
            $("#agregar").hide();
            return false;
            });
            });
        </script>
    </head>
    <body>

        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <h1 class="display-1">Personas</h1>

                    <button class="btn btn-primary" href="#" id="showList"><i class="fa fa-eye"></i> Listar Personas</button>
                    <button class="btn btn-primary" href="#" id="showAdd"><i class="fa fa-eye"></i> Agregar Persona</button>

                    <div id="listar" style="display: none;" ng-app ="listarApp">
                        <div ng-controller="listController">
                            <table class="table table-striped table-bordered table-hover">
                                <tr class="p-2 bg-dark text-white">
                                    <td>Id Persona</td>
                                    <td>Tipo Documento</td>
                                    <td>Número Documento</td>
                                    <td>Primer Nombre</td>
                                    <td>Segundo Nombre</td>
                                    <td>Primer Apellido</td>
                                    <td>Segundo Apellido</td>
                                    <td>Sexo</td>
                                    <td>Fecha de Nacimiento</td>
                                    <td>Dirección</td>
                                    <td>Teléfono</td>
                                    <td>Fecha Ingreso</td>
                                    <td>Email</td>
                                    <td>Estado</td>
                                    <td>Acciones</td>
                                </tr>
                                <tr ng-repeat="persona in data.Persona">
                                    <td> {{persona.idpersona}}</td>
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
                                    <td>{{persona.fechaalta}}</td>
                                    <td>{{persona.email}}</td>
                                    <td>{{persona.estado}}</td>
                                    <td>
                                        <button class="btn btn-warning">Editar</button>
                                        <button class="btn btn-danger">Eliminar</button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>


                    <div id="agregar" class="container col-md-6" style="display: none;" ng-app="guardarApp" ng-controller="addController as vm">
                        <h3>Agregar Persona</h3>
                        <form ng-submit="vm.Guardar()">
                            <div class="form-group">
                                <label>Id Persona</label>
                                <input type="text" class="form-control" type="number" ng-model="vm.fdatos.idpersona">
                            </div>    
                            <div class="form-group">
                                <label>Tipo de Identificación</label>
                                <input type="text" class="form-control" type="number" ng-model="vm.fdatos.idtipodocumento">
                            </div> 

                            <div class="form-group">
                                <label>Número Documento</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.numdocumento">
                            </div>    
                            <div class="form-group">
                                <label>Primer Nombre</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.primernombre">
                            </div> 
                            <div class="form-group">
                                <label>Segundo Nombre</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.segundonombre">
                            </div>    
                            <div class="form-group">
                                <label>Primer Apellido</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.primerapellido">
                            </div> 
                            <div class="form-group">
                                <label>Segundo Apellido</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.segundoapellido">
                            </div> 
                            <div class="form-group">
                                <label>Sexo</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.sexo">
                            </div> 
                            <div class="form-group">
                                <label>Fecha de Nacimiento</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.fechanacimiento">
                            </div> 
                            <div class="form-group">
                                <label>Dirección</label>
                                <input type="text" class="form-control" type="text" type="text" ng-model="vm.fdatos.direccion">
                            </div> 
                            <div class="form-group">
                                <label>Teléfono</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.telefono">
                            </div> 
                            <div class="form-group">
                                <label>Fecha Ingreso</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.fechaalta">
                            </div> 
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.email">
                            </div> 
                            <div class="form-group">
                                <label>Estado</label>
                                <input type="text" class="form-control" type="text" ng-model="vm.fdatos.estado">
                            </div>
                            <br>
                            <div class="form-group">
                                <input  class="btn btn-danger" type="submit" value = "Guardar">
                            </div> 
                        </form>

                    </div>

                </div>
            </div>
        </div>

    </body>
</html>