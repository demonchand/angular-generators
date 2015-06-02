"use strict"

# Declare app-level module for services, filters, controllers, directives, etc.
appModule = angular.module("<%= rails_application_name %>App",
 [ "ngSanitize",
  "<%= rails_application_name %>App.controllers",
  "<%= rails_application_name %>App.services",
  "<%= rails_application_name %>App.directives",
  "<%= rails_application_name %>App.filters"
 ])
