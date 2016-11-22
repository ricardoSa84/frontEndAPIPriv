angular.module("app").controller('RegisterController',function($scope, $location, AuthenticationService) {
  
  $scope.credentials = { name: "", password: "", email: "" };

  var onRegisterSuccess = function(data) {
    $location.path('/login');
  };
  
  var onRegisterError = function(data) {
    $scope.message = data;
  };

  $scope.register = function() {
    AuthenticationService.register($scope.credentials)
    .success(onRegisterSuccess)
    .error(onRegisterError);
  };

});


