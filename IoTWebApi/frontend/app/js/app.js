angular.module("app", ["ngResource", "ngRoute"]).run(function($rootScope,$http) {
  
  //Adds headers for all $http requests
  $http.defaults.headers.common["Authorization"] = "Token token=IOHwx9H1LwHDtKlcwMpyKgtt"

  $rootScope.log = function(thing) {
    console.log(thing);
  };

  $rootScope.alert = function(thing) {
    alert(thing);
  };

});
