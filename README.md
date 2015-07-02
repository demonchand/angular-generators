# Angular Generators

This generator will provide you the base structure Angular on your
rails projects. It has init and scaffold generating scripts.

#### Setup

Add the gem to your Gemfile.

`gem "angular-generators", group: :development`

Initially you have run the following command to

`rails g angular:init`

The above initialize command will initialize the Angular directory
structure like as follows,

For example your application name is depot,

```
app/assets/javascripts/angular/YOUR_APP_NAMEApp.js.coffee
app/assets/javascripts/angular/controllers.js.coffee
app/assets/javascripts/angular/services.js.coffee
app/assets/javascripts/angular/directives.js.coffee
app/assets/javascripts/angular/filters.js.coffee
app/assets/javascripts/angular/services/routes.js.coffee
app/assets/javascripts/angular/controllers/application_controller.js.coffee
```

After the initial setup paste the following code on your application

`app/views/layouts/application.html.erb`

``` html
<html>
```
Change to

``` html
<html ng-app="YOUR_APP_NAMEApp" ng-controller="ApplicationController" ng-init="initialize()">
```

Add angularjs google api to your application javascript tag like as
follows,

``` erb
<%= javascript_include_tag "https://ajax.googleapis.com/ajax/libs/angularjs/1.2.22/angular.min.js" %>
<%= javascript_include_tag "https://ajax.googleapis.com/ajax/libs/angularjs/1.2.22/angular-sanitize.min.js" %>
```

#### Generate module

Run this generator to include modules to your angular section,

```
rails g angular:scaffold Post

        (OR)

rails g angular:scaffold post

```
It generates the controller and service module and update the routes
file. Here are the example files list,

```
app/assets/javascripts/angular/controllers/posts_controller.js.coffee
app/assets/javascripts/angular/services/models/post.js.coffee
app/assets/javascripts/angular/services/routes.js.coffee
```

So add the controller tag to your corresponding posts view file.

Ex,

``` erb
<div ng-controller="PostsController" ng-init="initialize()">
<p id="notice"><%= notice %></p>

<h1>Listing Posts</h1>
```

#### Gon Usage

For connecting your rails controller to javascripts you may try this
[Gon] (https://github.com/gazay/gon) gem. 


#### Sample Application

`Scaffolding URL goes here`


#### Wiki

Routes will covered ASAP.

#### Contributing

If you want to contribute to this project, you can download it from
Github repository, I develop this using Ruby 2.1.2. I think it should
work with later vestions too.

#### Issue

It you found any issue, pease let me know.



