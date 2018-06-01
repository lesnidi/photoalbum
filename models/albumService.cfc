/**
* I am a new Model Object
*/
component accessors="true"{
	
	// Properties
	

	/**
	 * Constructor
	 */
	albumService function init(){
		
		return this;
	}
	
	/**
	* new
	*/
	function new(){
		
	}

	/**
	* edit
	*/
	function edit(){
		
	}

	/**
	* getAll (en fonction des mes droits, soit je suis le proprio soit j'ai les droits)
	*/
	function getAll( ){
   		return queryExecute(
			"SELECT * FROM album ");
	}


	/**
	* get
	*/
	 function get( required id ){
		return queryExecute(
			"SELECT * FROM album where id=#arguments.id#");
	}

	


}