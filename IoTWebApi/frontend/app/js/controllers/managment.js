angular.module("app").controller('managmentController', function($scope, $location, AuthenticationService,SessionService,ManageUserService) {
  $scope.title = "Home";
  $scope.credentials ={};
   if(!AuthenticationService.isLoggedIn()){
      $location.path('/login');
    }else{
      if(AuthenticationService.getLoggedID()){
        console.log($scope.credentials);
        getUser(AuthenticationService.getLoggedID());
      }
    }
    
   //--GetUser 
  function getUser(id) {
    console.log("ID: " + id);
    if(id){
      ManageUserService.getUser(id).success(onGetUserSuccess).error(onGetUserError);
    }
  }; 

  var onGetUserSuccess = function(data) {
    console.log(data);
     $scope.message = "Sucesso...";
  };
  var onGetUserError = function(data) {
    console.log("error");
     $scope.message = data.exception;
  };  
  //$scope.message = "Mouse Over these images to see a directive at work";
  function uncacheSession (response) {
    SessionService.unset('authenticated');
  };

  var onLogoutSuccess = function(response) {
    uncacheSession();
    $location.path('/login');
  };

  $scope.logout = function() {
    AuthenticationService.logout().success(onLogoutSuccess);
  };

  $scope.getCredentials = function() {
     $scope.credentials = AuthenticationService.getCredentials();
  };

  $scope.redirect = function() {
    $location.path('/manageUsers');
  };

});


