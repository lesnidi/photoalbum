/**
* I am a new Model Object
*/
component accessors="true"{
	
	// Properties
	

	/**
	 * Constructor
	 */
	securityService function init(){
		sessions.user ={
			id : 1 ,
			name="Christian",
			groups: "admin"
		};
		return this;
	}
	

}