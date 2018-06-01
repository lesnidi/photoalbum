/**
********************************************************************************
Copyright 2005-2007 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.ortussolutions.com
********************************************************************************
*/
component{

	// APPLICATION CFC PROPERTIES
	this.name 				= "ColdBoxTestingSuite" & hash(getCurrentTemplatePath());
	this.sessionManagement 	= true;
	this.sessionTimeout 	= createTimeSpan( 0, 0, 15, 0 );
	this.applicationTimeout = createTimeSpan( 0, 0, 15, 0 );
	this.setClientCookies 	= true;

	// Create testing mapping
	this.mappings[ "/tests" ] = getDirectoryFromPath( getCurrentTemplatePath() );
	// Map back to its root
	rootPath = REReplaceNoCase( this.mappings[ "/tests" ], "tests(\\|/)", "" );
	this.mappings["/root"]   = rootPath;

	
	this.datasources["album"] = {
		class: 'com.mysql.cj.jdbc.Driver'
	  , bundleName: 'com.mysql.cj'
	  , connectionString: 'jdbc:mysql://localhost:3306/albums?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=true'
	  , username: 'root'
	  , password: ''
	  
	  // optional settings
	  , connectionLimit:100 // default:-1
  };

	this.datasource = "album";
	  
}