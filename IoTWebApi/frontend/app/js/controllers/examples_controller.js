angular.module("app").controller('ExamplesController',function($scope, $location) {
  

  	$scope.message = "ExamplesCtrl";

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


