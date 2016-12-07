angular.module("app").controller('HomeController',function($scope, $location) {
  	$scope.message = "HomeCtrl";

	$scope.login = function() {
	    $location.path('/login');
	}; 
	$scope.register = function() {
	    $location.path('/register');
	}; 
	$scope.documentation = function() {
	    $location.path('/documentation');
	}; 
	$scope.examples = function() {
	    $location.path('/examples');
	};

});


