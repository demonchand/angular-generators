"use strict"

<%= rails_application_name %>AppControllersModule = angular.module("<%= rails_application_name %>App.controllers", [])

<%= rails_application_name %>AppControllersModule.config([ "$httpProvider",
	($httpProvider) ->
		# This header is required for all Ajax requests.
		$httpProvider.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest"
	])
