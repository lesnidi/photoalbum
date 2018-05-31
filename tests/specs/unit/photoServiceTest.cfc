/**
* The base model test case will use the 'model' annotation as the instantiation path
* and then create it, prepare it for mocking and then place it in the variables scope as 'model'. It is your
* responsibility to update the model annotation instantiation path and init your model.
*/
component extends="coldbox.system.testing.BaseModelTest" model="models.photoService"{
	
	/*********************************** LIFE CYCLE Methods ***********************************/

	function beforeAll(){
		super.beforeAll();
		
		// setup the model
		super.setup();
		
		// init the model object
		model.init();
	}

	function afterAll(){
		super.afterAll();
	}

	/*********************************** BDD SUITES ***********************************/
	
	function run(){

		describe( "photoService Suite", function(){
			
			it( "should new", function(){
				expect( false ).toBeTrue();
			});

			it( "should edit", function(){
				expect( false ).toBeTrue();
			});

			it( "should getAll", function(){
				expect( false ).toBeTrue();
			});

			it( "should get", function(){
				expect( false ).toBeTrue();
			});


		});

	}

}
