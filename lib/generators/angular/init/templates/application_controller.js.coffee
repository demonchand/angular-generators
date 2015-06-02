"use strict"
        
<%= rails_application_name %>AppControllerModule = angular.module("<%= rails_application_name %>App.controllers")

<%= rails_application_name %>AppControllerModule.controller("ApplicationController",
  [ "$scope", "$http", "$timeout", "Route", ($scope, $http, $timeout, Route) ->

    _self = this

    #$scope.route = new Route()

    $scope.initialize = ->
      console.log "Application Controller called"
      # Initializer code goes here
  
  ])

