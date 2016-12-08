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
     $scope.message = "Success...";
  };
  var onGetUserError = function(data) {
     $scope.message = data.exception;
  };  

  function uncacheSession (response) {
    SessionService.unsetSession();
  };

  $scope.logout = function() {
    console.log("logout");
    uncacheSession()
    $location.path('/login');
  };

  $scope.resetToken = function() {
    var id = $scope.credentials.id;
    ManageUserService.resetApiKey(id).success(onResetTokenSuccess).error(onResetTokenError);
  };

  var onResetTokenSuccess = function(data) {
     $scope.credentials.api_key = data.api_key;
     $scope.message = "New token generated...";
     console.log($scope.credentials.api_key);
  };  
  var onResetTokenError = function(data) {
     $scope.message = data.exception;
  };  


  $scope.redirect = function() {
    $location.path('/manageUsers');
  };
  $scope.changePassword = function() {
    $location.path('/changePassword');
  };

});

