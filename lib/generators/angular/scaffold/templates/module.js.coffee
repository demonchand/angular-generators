'use strict'

<%= rails_application_name %>AppServicesModule = angular.module("<%= rails_application_name %>App.services")

<%= rails_application_name %>AppServicesModule.factory("<%= singular_name %>", ->
  class <%= singular_name %>
    constructor: (json) ->
      json = {} if !json?
     
      @id = json.id ? ""

)