"use strict"
        
<%= rails_application_name %>AppControllerModule = angular.module("<%= rails_application_name %>App.controllers")

<%= rails_application_name %>AppControllerModule.controller("<%= singular_name.pluralize %>DialogController",
  [ "$scope", "$http", "$timeout", "<%= singular_name %>", ($scope, $http, $timeout, <%= singular_name %>) ->

    _self = this

    #$scope.<%= singular_name.pluralize.downcase %> = new <%= singular_name %>()

    $scope.initialize = ->
      console.log "<%= singular_name.pluralize %> Dialog Controller initializer"
      # Initializer code goes here
  ])

