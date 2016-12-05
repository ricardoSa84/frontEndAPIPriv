angular.module("app").controller('HomeController', function($scope, $location, AuthenticationService,SessionService) {
  $scope.title = "Home";
  if(!AuthenticationService.isLoggedIn()){
     $location.path('/login');
  }
  //$scope.message = "Mouse Over these images to see a directive at work";
  function uncacheSession (response) {
    SessionService.unset('authenticated');
  };

  var onLogoutSuccess = function(response) {
    uncacheSession();
    console.log("uncached");
    $location.path('/login');
  };

  $scope.logout = function() {
    AuthenticationService.logout().success(onLogoutSuccess);
  };

  $scope.getCredentials = function() {
     $scope.credentials = AuthenticationService.getCredentials();
  };

});


