//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//

@IsTest
public class SingleObjectWithArray_Test {
	
	// This test method should give 100% coverage
	static testMethod void testParse() {
		String json = '{'+
		'	\"color\": \"red\",'+
		'	\"value\": \"#f00\",'+
		'	\"items\":['+
		'		{'+
		'			\"name\":\"ball\",'+
		'			\"quantity\":\"1\"'+
		'		}'+
		'	]'+
		'}';
		SingleObjectWithArrayClass.SingleObjectWithArray r = SingleObjectWithArrayClass.parse(json);
		System.assert(r != null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		SingleObjectWithArrayClass.SingleObjectWithArray objSingleObjectWithArray = new SingleObjectWithArrayClass.SingleObjectWithArray(System.JSON.createParser(json));
		System.assert(objSingleObjectWithArray != null);
		System.assert(objSingleObjectWithArray.color == null);
		System.assert(objSingleObjectWithArray.value == null);
		System.assert(objSingleObjectWithArray.items == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		SingleObjectWithArrayClass.Items objItems = new SingleObjectWithArrayClass.Items(System.JSON.createParser(json));
		System.assert(objItems != null);
		System.assert(objItems.name == null);
		System.assert(objItems.quantity == null);
	}
}