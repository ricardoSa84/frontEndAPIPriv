angular.module("app").controller('PassRecoveryController',function($scope, $location,AuthenticationService) {
 
$scope.message = "PassRecoveryController";
$scope.data = {email:""};

$scope.recover = function() {
   AuthenticationService.resetPassWord($scope.data)
    .success(onResetSuccess)
    .error(onResetError);
  };

var onResetSuccess = function(data) {
     $location.path('/resetConfirm');
  };
  
  var onResetError = function(data) {
    $scope.message = data;
  };

});


