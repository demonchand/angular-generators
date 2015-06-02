"use strict"
        
<%= rails_application_name %>AppControllerModule = angular.module("<%= rails_application_name %>App.controllers")

<%= rails_application_name %>AppControllerModule.controller("<%= singular_name.pluralize %>Controller",
  [ "$scope", "$http", "$timeout", "<%= singular_name %>", ($scope, $http, $timeout, <%= singular_name %>) ->

    _self = this

    #$scope.product = new <%= singular_name %>()

    $scope.initialize = ->
      console.log "<%= singular_name.pluralize %> Controller initializer"
      # Initializer code goes here
  ])

