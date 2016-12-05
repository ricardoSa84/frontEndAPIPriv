angular.module("app").controller('HomeController', function($scope, $location, AuthenticationService,SessionService) {
  $scope.title = "Home";
  //$scope.message = "Mouse Over these images to see a directive at work";
  var uncacheSession = function(response) {
    SessionService.unset('authenticated');
  };

  var onLogoutSuccess = function(response) {
    uncacheSession
    $location.path('/login');
  };

  $scope.logout = function() {
    AuthenticationService.logout().success(onLogoutSuccess);
  };

  $scope.getCredentials = function() {
     $scope.credentials = AuthenticationService.getCredentials();
  };

});


