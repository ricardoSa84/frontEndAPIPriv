angular.module("app").controller('LoginController',function($scope, $location, AuthenticationService,SessionService) {
  
if(SessionService.isLoggedIn()){
     $location.path('/managment');
  }

  var onLoginSuccess = function(data) {
     SessionService.setLoggedID(data.id);
     SessionService.setSession(true);
     $location.path('/managment');
  };
  
  var onLoginError = function(data) {
    $scope.message = data;
  };

  $scope.login = function() {
    AuthenticationService.login($scope.credentials)
    .success(onLoginSuccess)
    .error(onLoginError);
  };

  $scope.register = function() {
    $location.path('/register');
  };

});


