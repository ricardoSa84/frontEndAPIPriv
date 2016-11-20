angular.module("app").controller('HomeController', function($scope, $location, AuthenticationService) {
  $scope.title = "Home";
  //$scope.message = "Mouse Over these images to see a directive at work";

  var onLogoutSuccess = function(response) {
    $location.path('/login');
  };

   $scope.logout = function() {
    AuthenticationService.logout().success(onLogoutSuccess);
  };

  //$scope.getCredentials = function() {
  //	var a = AuthenticationService.getCredentials()
  //	$scope.message = a;
  //};



});
