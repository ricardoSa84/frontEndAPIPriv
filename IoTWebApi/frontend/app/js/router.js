angular.module('app').config(function($routeProvider, $locationProvider) {

  $locationProvider.html5Mode({enabled:false});

  $routeProvider.when('/login', {
    templateUrl: 'login.html',
    controller: 'LoginController'
  });

    $routeProvider.when('/login/:token', {
    templateUrl: 'login.html',
    controller: 'paramController',
    params: {
          token: 'token'
        }
  });
    
  $routeProvider.when('/home', {
    templateUrl: 'home.html',
    controller: 'HomeController'
  });
  
  $routeProvider.when('/manageUsers', {
    templateUrl: 'manageUsers.html',
    controller: 'ManageUsersController'
  });

  $routeProvider.when('/register', {
    templateUrl: 'register.html',
    controller: 'RegisterController'
  });

  $routeProvider.when('/$resource/list-of-books', {
    templateUrl: 'books_resource.html',
    controller: 'BooksResourceController'
  });

  $routeProvider.when('/$http/list-of-books', {
    templateUrl: 'books_http.html',
    controller: 'BooksHttpController',
    resolve: {
      books: function(BookService) {
        return BookService.getBooks();
      }
    }
  });

  $routeProvider.otherwise({ redirectTo: '/login' });

});
