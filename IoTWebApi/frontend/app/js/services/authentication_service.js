angular.module("app").factory('AuthenticationService', function($http) {
  // these routes map to stubbed API endpoints in config/server.js
var credentials = {};

  return {
    login: function(credentials) {
    	return $http.post('/v1/login',credentials)
    },
    logout: function() {
     	return $http.post('/v1/logout');
    },
    getCredentials: function () {
        return credentials;
    },
    setCredentials: function(value) {
        credentials = value;
    }
  };
});

