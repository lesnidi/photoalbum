/**
* Copyright 2005-2007 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
* www.ortussolutions.com
* ---
*/
component{

	// add modification for test
	// Application properties
	this.name = hash( getCurrentTemplatePath() );
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,30,0);
	this.setClientCookies = true;

	// Java Integration
	this.javaSettings = { 
		loadPaths = [ ".\lib" ], 
		loadColdFusionClassPath = true, 
		reloadOnChange= false 
	};

	// COLDBOX STATIC PROPERTY, DO NOT CHANGE UNLESS THIS IS NOT THE ROOT OF YOUR COLDBOX APP
	COLDBOX_APP_ROOT_PATH = getDirectoryFromPath( getCurrentTemplatePath() );
	// The web server mapping to this application. Used for remote purposes or static purposes
	COLDBOX_APP_MAPPING   = "";
	// COLDBOX PROPERTIES
	COLDBOX_CONFIG_FILE 	 = "";
	// COLDBOX APPLICATION KEY OVERRIDE
	COLDBOX_APP_KEY 		 = "";

	this.datasources["album"] = {
		class: 'com.mysql.cj.jdbc.Driver'
	  , bundleName: 'com.mysql.cj'
	  , connectionString: 'jdbc:mysql://localhost:3306/album?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=true'
	  , username: 'root'
	  , password: "encrypted:6a3e5325ffeaafd4bb0247c183c9f1f3ce068b4d59405a1dfd887a1fdff0342d"
	  
	  // optional settings
	  , connectionLimit:100 // default:-1
  };

	this.datasource = "album";
	  
	// application start
	public boolean function onApplicationStart(){
		application.cbBootstrap = new coldbox.system.Bootstrap( COLDBOX_CONFIG_FILE, COLDBOX_APP_ROOT_PATH, COLDBOX_APP_KEY, COLDBOX_APP_MAPPING );
		application.cbBootstrap.loadColdbox();
		return true;
	}
	//Register interceptors as an array, we need order
	interceptors = [
		//SES
		{class="coldbox.system.interceptors.SES"},
		// Security
		{ class="interceptors.securityInterceptor" }
	];
	// application end
	public void function onApplicationEnd( struct appScope ){
		arguments.appScope.cbBootstrap.onApplicationEnd( arguments.appScope );
	}

	// request start
	public boolean function onRequestStart( string targetPage ){
		// Process ColdBox Request
		application.cbBootstrap.onRequestStart( arguments.targetPage );

		return true;
	}

	public void function onSessionStart(){
		application.cbBootStrap.onSessionStart();
	}

	public void function onSessionEnd( struct sessionScope, struct appScope ){
		arguments.appScope.cbBootStrap.onSessionEnd( argumentCollection=arguments );
	}

	public boolean function onMissingTemplate( template ){
		return application.cbBootstrap.onMissingTemplate( argumentCollection=arguments );
	}

}
