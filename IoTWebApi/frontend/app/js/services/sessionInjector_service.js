angular.module("app").factory('sessionInjector', function(SessionService) {  
    var sessionInjector = {
        request: function(config) {        
          //Adds headers for all $http requests
          //config.headers['Authorization'] = "Token token=IOHwx9H1LwHDtKlcwMpyKgtt"
          config.headers['Authorization'] = "Token token=" + SessionService.getLoggedToken();
          return config;
        }
    };
    return sessionInjector;
});

//http://www.webdeveasy.com/interceptors-in-angularjs-and-useful-examples/