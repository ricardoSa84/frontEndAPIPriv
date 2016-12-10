angular.module("app").controller('LoginController',function($scope, $location, AuthenticationService,SessionService) {
  
  $scope.isAuth = function() { 
    if(SessionService.isLoggedIn()){
      $location.path('/managment/'+ SessionService.getLoggedID());
    }
  };
  var onLoginSuccess = function(data) {
     SessionService.setLoggedID(data.id);
     SessionService.setSession(true);
     $location.path('/managment/'+ data.id );
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
  
  $scope.passRecovery = function() {
    $location.path('/passRecovery');
  };

});


