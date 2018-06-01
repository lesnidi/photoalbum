/**
* I am a new Model Object
*/
component accessors="true"{
	
	// Properties
	

	/**
	 * Constructor
	 */
	userService function init(){
		
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
	* getAll
	*/
	any function getAll(){
		qUsers = queryExecute(
			"select * 
			from user"
		);
		
		return qUsers;
	}

	/**
	* get
	*/
	function get(){
		
	}


}