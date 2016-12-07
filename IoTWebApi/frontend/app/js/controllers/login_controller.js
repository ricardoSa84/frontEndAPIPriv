angular.module("app").controller('LoginController',function($scope, $location, AuthenticationService,SessionService) {
  
if(AuthenticationService.isLoggedIn()){
     $location.path('/managment');
  }

   var cacheSession   = function() {
    SessionService.set('authenticated', true);
    console.log(SessionService.getArray());
  };

  $scope.credentials = { username: "", password: ""};
  $scope.message = "Hello!!";

  var onLoginSuccess = function(data) {
    //$scope.message = "Token : " + data.token;
    cacheSession();
    $scope.token = data.token;
    $scope.setCredentials();
    $scope.credentials.id=data.id;
    AuthenticationService.setLoggedID(data.id);
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

  $scope.setCredentials = function() {
    var cred = {  username: $scope.credentials.username, password: $scope.credentials.password, token: $scope.token }
      AuthenticationService.setCredentials(cred);
    }


  $scope.register = function() {
    $location.path('/register');
  };

});


