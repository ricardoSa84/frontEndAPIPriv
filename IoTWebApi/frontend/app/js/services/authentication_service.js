angular.module("app").factory('AuthenticationService', function($http,SessionService ) {
  
var credentials = {};

  return {
    login: function(credentials) {
    	return $http.post('/v1/login',credentials)
    },
    register: function(credentials) {
      return $http.post('/v1/users',credentials);
    }    
  };
});

