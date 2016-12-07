angular.module("app").controller('managmentController', function($scope, $location, AuthenticationService,SessionService,ManageUserService) {

  $scope.title = "Home";
  $scope.credentials ={};


  $scope.isAuth = function() {
    if(!AuthenticationService.isLoggedIn()){
        $location.path('/login');
    }else{
       var id = AuthenticationService.getLoggedID();
       onGetLoggedIDSuccess(id);
    }
  }
   //--GetUser 
   var onGetLoggedIDSuccess = function (id) {
    if(id){
      ManageUserService.getUser(id).success(onGetUserSuccess).error(onGetUserError);
    }
  }; 

  var onGetUserSuccess = function(data) {
     $scope.credentials.username = data.name
     $scope.credentials.password = data.email;
     $scope.message = "Sucesso...";
  };
  var onGetUserError = function(data) {
     $scope.message = data.exception;
  };  

  function uncacheSession (response) {
    SessionService.unset('authenticated');
  };


  $scope.logout = function() {
    uncacheSession()
    $location.path('/login');
  };


  $scope.redirect = function() {
    $location.path('/manageUsers');
  };
  $scope.changePassword = function() {
    $location.path('/changePassword');
  };

});

