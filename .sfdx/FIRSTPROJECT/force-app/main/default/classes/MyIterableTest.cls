@IsTest
private class MyIterableTest {
    @IsTest
    static void testIterableForLoop() {
        // Prepare test data
        //List<String> testData = new List<String>{'Hello','World'};
         List<String> strings = new List<String>{'Hello', 'World'};
        MyIterable myCustomIterable = new MyIterable(strings);

        // Use a list to store iterated items for verification
        List<String> iteratedItems = new List<String>();

        // Iterate over the custom iterable using a for-each loop
        for (String item : myCustomIterable) {
            //iteratedItems.add(item);
            System.debug(item);
        }

        // Assert that all items were iterated correctly
        ////System.assertEquals(strings.size(), iteratedItems.size(), 'Sizes should match');
        //System.assertEquals(strings, iteratedItems, 'Iterated items should match original data');
    }
}