component {
    
    function up( schema ) {
        schema.create( "user", function( table ) {
	    table.increments ( "id" );
	    table.string     ( "name" );
	    table.string     ( "email" );
	    table.string     ( "password" );
	    table.timestamp  ( "cdate" ).nullable();
		} );
    }

    function down( schema ) {
       schema.drop( "user" ); 
    }

}
