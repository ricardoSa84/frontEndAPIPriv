angular.module("app").controller('managmentController', function($scope, $location,$routeParams, SessionService,ManageUserService) {
  $scope.credentials ={};

  //Authentication
  $scope.isAuth = function() {
    if(!SessionService.isLoggedIn()){
        $location.path('/login');
    }
  }

   //--GetUser 
  $scope.getUser = function () {
      //gets the id from the route
      var id = $routeParams.id;
      ManageUserService.getUser(id).success(onGetUserSuccess).error(onGetUserError);
  }; 
  var onGetUserSuccess = function(data) {
     $scope.credentials = data;
     $scope.message = "Success...";
  };
  var onGetUserError = function(data) {
     $scope.message = data.exception;
  };  


  //Reset token --------
  $scope.resetToken = function() {
    var id = $scope.credentials.id;
    ManageUserService.resetApiKey(id).success(onResetTokenSuccess).error(onResetTokenError);
  };
  var onResetTokenSuccess = function(data) {
     $scope.credentials.api_key = data.api_key;
     $scope.message = "New token generated...";
  };  
  var onResetTokenError = function(data) {
     $scope.message = data.exception;
  };  


  //Navigation----
  $scope.redirect = function() {
    $location.path('/manageUsers');
  };
  $scope.changePassword = function() {
    $location.path('/changePassword');
  };
  $scope.logout = function() {
    SessionService.unsetSession();
    $location.path('/login');
  };

});

