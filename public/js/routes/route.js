app.config(function($routeProvider,$locationProvider) {
    $routeProvider
    .when("/home",{
    templateUrl:"main.html",
        })
    .when("/login", {
      templateUrl : "login.html"
      // controller :  "loginController"
    })
    .when("/event", {
      templateUrl : "event1.html"
    })
    .when("/add_event", {
      templateUrl : "add_event.html"
        })
    .when("/edit_event", {
      templateUrl : "edit_event.html"
        })
    .when("/spandan", {
      templateUrl : "spandan.html"
    })
    .when("/yamini", {
      templateUrl : "yamini.html"
    })
    .when("/sangam", {
      templateUrl : "sangam.html"
    })
    .when("/foundationday", {
      templateUrl : "foundationday.html"
    })
    .when("/rise", {
      templateUrl : "rise.html"
    })
    .when("/infin8", {
      templateUrl : "infin8.html"
    })
    .when("/convocation", {
      templateUrl : "convocation.html"
    })
    .when("/gallery", {
      templateUrl : "gallery.html"
    })
    .otherwise({redirectTo:'/home'});

    // $locationProvider.html5Mode(true);


  });
