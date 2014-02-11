public with sharing class MaxApexUtil {

	/*
	* Returns a list of values for the given fieldName, we trust the field is decimal
	*
	* Null Safe
	*/
	public static Decimal[] pluckDecimals(sObject[] theObjects, String fieldName){
		List<Decimal> result = new List<Decimal>();
		if(theObjects == null || theObjects.size() < 1){
			return result;
		}
		
		for(sObject o : theObjects){
			Decimal value = (Decimal)o.get(fieldName);
			result.add(value);
		}
		return result;
	}
	
	/*
	* Returns a list of values for the given fieldName, we trust the field is decimal
	*
	* Null Safe
	*/
	public static String[] pluckStrings(sObject[] theObjects, String fieldName){
		List<String> result = new List<String>();
		if(theObjects == null || theObjects.size() < 1){
			return result;
		}
		
		for(sObject o : theObjects){
			String value = (String)o.get(fieldName);
			result.add(value);
		}
		return result;
	}
	/*
	* Sums a list of numbers
	* Null safe in that it returns 0 if passed null;
	*/
	public static Decimal sum(Decimal[] numbers){
		Decimal result = 0;
		if(numbers != null){
			for(Decimal n : numbers){
				result = result + n;
			}
		}
		return result;
	}
	
	/*
	sObject anObject = theObjects[0];
		
		Schema.DescribeSObjectResult[] descResult = Schema.describeSObjects(new String[]{anObject.getSObjectType().getDescribe().getName()});
  
		Set<String> schemaFieldNames = descResult[0].fields.getMap().keyset();
		for(String field : schemaFieldNames){
			
		}
		*/
}