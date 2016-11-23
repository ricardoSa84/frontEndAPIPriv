angular.module("app").controller('LoginController',function($scope, $location, AuthenticationService,SessionService) {
  
   var cacheSession   = function() {
    SessionService.set('authenticated', true);
  };

  $scope.credentials = { username: "", password: "" };
  $scope.message = "Hello!!";

  var onLoginSuccess = function(data) {
    //$scope.message = "Token : " + data.token;
    cacheSession
    $scope.token = data.token;
    $scope.setCredentials();
    $location.path('/home');
  };
  
  var onLoginError = function(data) {
    $scope.message = data;
  };

  $scope.login = function() {
    AuthenticationService.login($scope.credentials)
    .success(onLoginSuccess)
    .error(onLoginError);
  };

  $scope.setCredentials = function() {
    var cred = {  username: $scope.credentials.username, password: $scope.credentials.password, token: $scope.token }
      AuthenticationService.setCredentials(cred);
    }


<<<<<<< Updated upstream
  $scope.register = function() {
    $location.path('/register');
  };

});


=======
});
>>>>>>> Stashed changes
