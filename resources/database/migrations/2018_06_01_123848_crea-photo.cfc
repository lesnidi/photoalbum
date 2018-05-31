component {
    
    function up( schema ) {
        schema.create( "photo", function( table ) {
	    table.increments( "id" );
	    table.string( "path" );
		} );         
    }

    function down( schema ) {
        schema.drop( "photo" );         
    }

}
