angular.module("app").factory('AuthenticationService', function($http,SessionService ) {
  // these routes map to stubbed API endpoints in config/server.js
var credentials = {};

  return {
    login: function(credentials) {
    	return $http.post('/v1/login',credentials)
    },
    register: function(credentials) {
      return $http.post('/v1/users',credentials);
    },
    resetPassWord: function(email) {
      return $http.post('/v1/resetpassword',email);
    }      
  };
});

