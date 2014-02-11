@isTest
public with sharing class TestMaxApexUtil {
	
	
	
	static testMethod void testPluckDecimal(){
		
		//Null Safe
		List<Decimal> result = MaxApexUtil.pluckDecimals(null, null);
		System.assertEquals(0, result.size());
		
		Opportunity o1 = new Opportunity();
		o1.put('Amount', 123);
		Opportunity o2 = new Opportunity();
		o2.put('Amount', 456);
		
		sObject[] contacts = new List<sObject>{ o1, o2};
		
		result = MaxApexUtil.pluckDecimals(contacts, 'Amount');
		
		System.assertEquals(123, result[0]);
		System.assertEquals(456, result[1]);
		System.assertEquals(2, result.size());
		
	}
	
	static testMethod void testPluckStrings(){
		
		//Null Safe
		List<String> result = MaxApexUtil.pluckStrings(null, null);
		System.assertEquals(0, result.size());
		
		Contact o1 = new Contact();
		o1.put('LastName', 'test1');
		Contact o2 = new Contact();
		o2.put('LastName', 'test2');
		
		sObject[] contacts = new List<sObject>{ o1, o2};
		
		result = MaxApexUtil.pluckStrings(contacts, 'LastName');
		
		System.assertEquals('test1', result[0]);
		System.assertEquals('test2', result[1]);
		System.assertEquals(2, result.size());
		
	}
}