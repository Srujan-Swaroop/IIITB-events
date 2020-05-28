app.directive('fileModel', ['$parse', function ($parse) {
	return {
	   restrict: 'A',
	   link: function(scope, element, attrs) {
		  var model = $parse(attrs.fileModel);
		  var modelSetter = model.assign;

		  element.bind('change', function(){
			 scope.$apply(function(){
				modelSetter(scope, element[0].files[0]);
			 });
		  });
	   }
	};
 }]);

 app.service('fileUpload', ['$http', function ($http) {
	this.uploadFileToUrl = function(text,img,file,uploadUrl){
	   var fd = new FormData();
	   console.log(text);
	   for ( var key in text ) {
		fd.append(key, text[key]);
	}
	   fd.append("files[]", img);
	   fd.append("files[]",file);
	   console.log("filest");
	   console.log(fd.getAll('files[]'));
	   $http.post(uploadUrl, fd, { 
		  transformRequest: angular.identity,
		  headers: {'Content-Type': undefined}
	   })
	   .success(function(){
	   })
	   .error(function(){
	   });
	}
 }]);

app.controller('mainController',function($scope,$http,Todos,fileUpload){
	$scope.form = [];
	$scope.files = [];
	$scope.check=$scope.event_search;
	
	$scope.config = {}; 
		$scope.config.toolbarGroups = [
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
		{ name: 'forms', groups: [ 'forms' ] },
		{ name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
		{ name: 'links', groups: [ 'links' ] },
		{ name: 'insert', groups: [ 'insert' ] },
		{ name: 'styles', groups: [ 'styles' ] },
		{ name: 'colors', groups: [ 'colors' ] },
		{ name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'tools', groups: [ 'tools' ] },
		{ name: 'others', groups: [ 'others' ] },
		{ name: 'about', groups: [ 'about' ] }
	];
	$scope.config.removeButtons = 'BGColor,Anchor,Subscript,Superscript,Paste,Copy,Cut,Undo,Redo';

	$scope.loading = true;
	$scope.event={
		title:"",
		speaker:"",
		location:"",
		category:"",
		date:"",
		stime:"",
		etime:"",
		editor1:"",
	};
	$scope.uploadFile = function(text){
		var file = $scope.myFile;
		var img=$scope.myImg;
		console.log("siddu no file");
		console.log(img);
		var uploadUrl = "/savedata";
		fileUpload.uploadFileToUrl(text,img,file,uploadUrl);

	 };

	$scope.IsVisible = true;
	$scope.IsVisible_main = true;
	$scope.Isvisible_search_hide=true
	$scope.Isvisible_search_show=false

	$scope.search_function=function(){ 
		$scope.Isvisible_search_hide = false;
		$scope.Isvisible_search_show = true;
		$scope.search="";
		if($scope.columns=="All")
		{
			$scope.Isvisible_search_hide = true;
			$scope.Isvisible_search_show = false;		
		}
	};
	$scope.search_type=function(){ 
		$scope.search_function();
		$scope.columns='Type';
		$scope.search='';
	};

	$scope.hideMain=function(){ 
		$scope.IsVisible_main = false;
		console.log("main hided");

	};
	$scope.showMain=function(){
		$scope.IsVisible_main = true;
	};
	$scope.hideLogin=function(){ 
		console.log("gsvdhbvbhghvgsiddu");
		$scope.IsVisible = false;
		$scope.hideMain();


	};
	$scope.showLogin=function(){
		console.log("gsvdhbvbhghvgsiddu");
		$scope.IsVisible = true;
		$scope.showMain();
	};
	$scope.submitevent=function(){	
		
		console.log("evecdcnt");	
		console.log($scope.event.editor1);
		console.log($scope.file);
		$scope.uploadFile($scope.event);
		alert('Event added successfully.')
		// Todos.create($scope.event)
		// // if successful creation, call our get function to get all the new todos
		// .success(function(data) {
		// 	$scope.loading = false;
		// });
		$scope.event={
			title:"",
			speaker:"",
			location:"",
			category:"",
			date:"",
			stime:"",
			etime:"",
			editor1:"",
		};				// clear the form so our user is ready to enter another
		console.log($scope.event.editor1);

	};
	Todos.get()
		.success(function(data) {

			$scope.todos = data['rows'];
			$scope.clicked_event=$scope.todos[0];   
			console.log("siddu");
			console.log($scope.todos.length);
			$scope.display=[];
			for(var i=0;i<$scope.todos.length;i++)
			{
				$scope.display.push($scope.todos[i]);
			}
			$scope.headers = ["All","Topic","Type","Date","Location","Abstract"];
			$scope.loading = false;
		});

	$scope.extractevent=function(index){
		console.log("vivek");
		$scope.IsVisible_main = "false";
		$scope.index_event=index;
		for(var i=0;i<$scope.display.length;i++)
			{
				if($scope.display[i]['ID']==index)
				{
					$scope.clicked_event=$scope.display[i];
				}
			} 
		$scope.event_abstract=$scope.clicked_event['Abstract'];
		$scope.imgsrc=$scope.clicked_event['Image'];
		$scope.hideMain();
		console.log($scope.event_abstract);
	};

	
	
});