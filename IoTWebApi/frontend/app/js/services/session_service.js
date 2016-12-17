angular.module("app").factory("SessionService", function() {
  return {
    setSession: function(authenticated) {
      return sessionStorage.setItem('authenticated', authenticated);
    },
    unsetSession: function() {
      return sessionStorage.removeItem('authenticated');
    },
    getArray: function(){
      return sessionStorage;
    },
    isLoggedIn() {
      return sessionStorage.getItem('authenticated');
    },
    getLoggedID() {
      return sessionStorage.getItem('loggedID');
    },
    setLoggedID(val) {
      return sessionStorage.setItem("loggedID", val);;
    },
    getLoggedToken() {
      return sessionStorage.getItem('LoggedToken');
    },
    setLoggedToken(val) {
      return sessionStorage.setItem("LoggedToken", val);;
    },
    getLoggedRole() {
      return sessionStorage.getItem('LoggedRole');
    },
    setLoggedRole(val) {
      return sessionStorage.setItem("LoggedRole", val);;
    },
    getLoggedName() {
      return sessionStorage.getItem('LoggedName');
    },
    setLoggedName(val) {
      return sessionStorage.setItem("LoggedName", val);;
    }
  };
});