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
	function getAll(){
		qUsers = queryExecute(
			"selectT * 
			 from user"
		);
		writeDump(prc.qUsers);
		return qUsers;
	}

	/**
	* get
	*/
	function get(){
		
	}


}