angular.module("app").factory('ManageUserService', function($http) {
  // these routes map to stubbed API endpoints in config/server.js

  return {
    getUserRole: function() {
    	return $http.get('/v1/users');
    },
    getRoles: function() {
      return $http.get('/v1/roles');
    },
    updateUser: function(user) {
      var id = user.user.id;
      return $http.put('/v1/users/'+ id, user);
    },
    deleteUser: function(id) {
      return $http.delete('/v1/users/'+ id);
    }  
  };
});

