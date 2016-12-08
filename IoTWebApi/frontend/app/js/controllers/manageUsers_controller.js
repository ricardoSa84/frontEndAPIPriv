 angular.module("app").controller('ManageUsersController',function($scope, $location, ManageUserService) {

  $scope.usersRoles = {};
  $scope.roles = {};


  var onGetUsersAndRolesSuccess = function(data) {
    $scope.usersRoles = data;
  };

  $scope.getUsersAndRoles = function() {
     ManageUserService.getUserRole().success(onGetUsersAndRolesSuccess);    
  };
  // ---Roles
  var onGetRolesSuccess = function(data) {
    $scope.roles = data;
  };
  $scope.getRoles = function() {
     ManageUserService.getRoles().success(onGetRolesSuccess);    
  };
   //--UpdateUsers
  $scope.updateUser = function(user,rId) {
    //para susbtituir pelo ngenable ou ngif
    if(rId){
      user.role= {id: rId } ;
      user = {user:user}
      ManageUserService.updateUser(user).success(onUpdateUserSuccess).error(onUpdateUserError);
    }
  };
  var onUpdateUserSuccess = function(data) {
      //update frontEnd
     $scope.message = "Updated with success User with the ID = " + data.id
  };

  var onUpdateUserError = function(data) {
     $scope.message = data.exception;
  };

  //--Deletes user Button
  $scope.deleteUser = function(user) {
    //deletes the object on server side
    ManageUserService.deleteUser(user.id).success(onDeleteUserSuccess).error(onDeleteUserError);
  };
  var onDeleteUserSuccess = function(data) {
    //objects deleted id to update the view
    var id = data.id;
    //variavel auxiliar
    var userRoles = $scope.usersRoles;
    //Removes the objecto with the specified id
    $scope.usersRoles = userRoles.filter(function (user) {
      if (!(user.id == id)) return user;
    });
  };
  var onDeleteUserError = function(data) {
    $scope.message = data.exception;
  };

  //View user Button
  $scope.viewUser = function(user) {
      var id = user.id;
      $location.path('/managment/'+id);     
  };



  //Pagination 

    $scope.currentPage = 0;
    $scope.pageSize = 6;
    $scope.numberOfPages=function(){
        return Math.ceil($scope.usersRoles.length/$scope.pageSize);
    };

});

//http://jsfiddle.net/2ZzZB/56/
angular.module("app").filter('startFrom', function() {
    return function(input, start) {
        start = +start; //parse to int
        if(input.length > 0)
          return input.slice(start);
    }
});

