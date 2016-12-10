angular.module("app").controller('DocumentationController',function($scope, $location) {
 
   	$scope.message = "DocumentationCtrl";

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


