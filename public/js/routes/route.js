app.config(function($routeProvider) {
    $routeProvider
    .when("/login", {
      templateUrl : "login.html"
      // controller :  "loginController"
    })
    .when("/event", {
      templateUrl : "event1.html"
      // controller :  "loginController"
    })
    .when("/add_event", {
      templateUrl : "add_event.html"
      // controller :  "loginController"
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
    });

  });
