angular.module("app").controller('LoginController',function($scope, $location, AuthenticationService,SessionService) {
  
  $scope.isAuth = function() { 
    if(SessionService.isLoggedIn()){
      $location.path('/managment/'+ SessionService.getLoggedID());
    }
  };
  var onLoginSuccess = function(data) {
    //Sets the id on session
     SessionService.setLoggedID(data.id);
     //Sets the token on session to be used on comunication with API
     SessionService.setLoggedToken(data.api_key); 
     //Sets the Role on session vaeriable
     SessionService.setLoggedRole(data.role.name); 
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

});


