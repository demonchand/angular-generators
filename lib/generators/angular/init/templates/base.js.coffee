	"use strict"

# Init Angular App modules
appModule = angular.module("<%= rails_application_name %>App",
 [ "ngSanitize",
  "<%= rails_application_name %>App.controllers",
  "<%= rails_application_name %>App.services",
  "<%= rails_application_name %>App.directives",
  "<%= rails_application_name %>App.filters"
 ])
