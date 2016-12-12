angular.module("app").controller('ChangePasswordController',function($scope, $location,ManageUserService,SessionService) {
  
	$scope.message = "ChangePasswordController";
	$scope.credentials = {};

	$scope.changePassword = false;


  //check if isUserPassword
  $scope.isUserPassword = function() {
    var id = SessionService.getLoggedID();
    var password = $scope.credentials.Oldpassword;
    var user = {id:id, password: password }
    ManageUserService.isUserPassword(user).success(onisUserPasswordSuccess).error(onisUserPasswordError);
  };
  var onisUserPasswordSuccess = function(data) {
    $scope.changePassword = data;
    $scope.updateUserData();
  };  
  var onisUserPasswordError = function(data) {
     $scope.message = data.exception;
  }; 


  //update User Data
  $scope.updateUserData = function() {

    if($scope.changePassword == true){

	    var id = SessionService.getLoggedID();
	    var password = $scope.credentials.password;
	    var user = {id:id, password: password }
    	user = {user:user}
    	ManageUserService.updateUser(user).success(onUpdateUserDataSuccess).error(onUpdateUserDataError);
    }else{
    	$scope.message = "password dont match..";
    }
  };
  var onUpdateUserDataSuccess = function(data) {
     $scope.message = "password changed..";
  };  
  var onUpdateUserDataError = function(data) {
     $scope.message = data.exception;
  }; 



});


