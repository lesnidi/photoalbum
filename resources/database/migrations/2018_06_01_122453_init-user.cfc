component {
    
    function up( schema ) {
    	var addRecords = query.from( "user" ).insert( 
    	values = [
        { "name" = "Christian", "email" = "christian@test.com", "password" = "xxx" },
        { "name" = "Didier",    "email" = "didier@test.com",    "password" = "xxx" },        
        { "name" = "Jorge",     "email" = "jorge@test.com",     "password" = "xxx" },
        { "name" = "Luis",      "email" = "luis@test.com",      "password" = "xxx" },
        { "name" = "Sebastian", "email" = "sebastian@test.com", "password" = "xxx" }
    	] );
		writeDump(addRecords);        
    }

    function down( schema ) {
    	var deleteRecords = query.from( "user" );
    	writeDump(deleteRecords);        
    }

}
