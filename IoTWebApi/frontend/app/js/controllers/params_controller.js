
    angular.module("app").controller('paramsController',function($scope, $location,$routeParams, AuthenticationService,SessionService) {
  
   var cacheSession   = function() {
    SessionService.set('authenticated', true);
  };

  $scope.credentials = { username: "", password: "" };
  $scope.message = 'Olá';
  //$scope.token = $routeParams.token;

  var onLoginSuccess = function(data) {
    //$scope.message = "Token : " + data.token;
    cacheSession
    $scope.token = data.token;
    $scope.setCredentials();
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

  $scope.setCredentials = function() {
    var cred = {  username: $scope.credentials.username, password: $scope.credentials.password, token: $scope.token }
      AuthenticationService.setCredentials(cred);
    }

  $scope.isLoggedIn = function() {
    return SessionService.get('authenticated');
  };


  $scope.register = function() {
    $location.path('/register');
  };

  $scope.$on('$routeChangeSuccess', function() {
    // $routeParams will be populated here if
    // this controller is used outside ng-view
    $scope.message = $routeParams.token;
  });

});
