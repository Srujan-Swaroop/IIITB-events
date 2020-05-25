angular.module('todoService', [])

	// super simple service
	// each function returns a promise object 
	.factory('Todos', ['$http',function($http) {
		return {
			get : function() {
				console.log("called");
				console.log($http.get('/api/siddu'));
				return $http.get('/api/siddu');
			},
			create : function(todoData) {
				console.log("event-frontend")
				return $http.post('/api/event',todoData);
			},
			delete : function(id) {
				return $http.delete('/api/todos/' + id);
			}
		}
	}]);