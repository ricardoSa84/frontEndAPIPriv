angular.module("app").controller('managmentController', function($scope, $location, SessionService,ManageUserService) {

  $scope.title = "Home";
  $scope.credentials ={};


  $scope.isAuth = function() {
    if(!SessionService.isLoggedIn()){
        $location.path('/login');
    }else{
       var id = SessionService.getLoggedID();
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
     $scope.credentials = data;
     console.log($scope.credentials);
     $scope.message = "Sucesso...";
  };
  var onGetUserError = function(data) {
     $scope.message = data.exception;
  };  

  function uncacheSession (response) {
    SessionService.unsetSession();
  };


  $scope.logout = function() {
    uncacheSession()
    $location.path('/login');
  };


  $scope.redirect = function() {
    $location.path('/manageUsers');
  };

});


