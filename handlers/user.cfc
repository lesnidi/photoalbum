/**
* I am a new handler
*/
component{
	
	property name="userService" inject="userService";

	/**
	* index
	*/
	function index( event, rc, prc ){
		prc.qUsers = UserService.getAll();
		//writeDump(prc.qUsers);
		event.setView( "user/index" );
	}

	/**
	* new
	*/
	function new( event, rc, prc ){
		event.setView( "user/new" );
	}

	/**
	* save
	*/
	function save( event, rc, prc ){
		event.setView( "user/save" );
	}

	/**
	* delete
	*/
	function delete( event, rc, prc ){
		event.setView( "user/delete" );
	}


	
}
