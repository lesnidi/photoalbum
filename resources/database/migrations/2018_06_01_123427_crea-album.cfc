component {
    
    function up( schema ) {
        schema.create( "album", function( table ) {
	    table.increments ( "id" );
	    table.string     ( "title" );
	    table.timestamp  ( "cdate" ).nullable();
		} );  
    }

    function down( schema ) {
        schema.drop( "album" ); 
    }

}
