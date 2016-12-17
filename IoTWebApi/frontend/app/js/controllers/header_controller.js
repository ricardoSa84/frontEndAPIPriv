angular.module("app").controller('HeaderController',function($scope, $location,$routeParams,SessionService,ManageUserService) {
  
  $scope.name = "";

	
  $scope.isLoggedIn = function() {
  	var loggedIn = SessionService.isLoggedIn();
  	if(loggedIn){
  		$scope.name = "Bem Vindo "+ SessionService.getLoggedRole() + " !";
  	}
	return loggedIn;
  };

  $scope.logout = function() {
    SessionService.unsetSession();
    $location.path('/login');
  };

  $scope.goToUserManagment = function() {
   var id = SessionService.getLoggedID();
    $location.path('/managment/'+id );
  };

  	
});