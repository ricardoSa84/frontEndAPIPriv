angular.module("app").controller('LoginController', function($scope, $location, AuthenticationService) {
  
  $scope.credentials = { username: "", password: "" };
  $scope.message = "Hello!!";

  var onLoginSuccess = function(data) {
    $scope.message = "Token : " + data.token;
    //$location.path('/home');
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
