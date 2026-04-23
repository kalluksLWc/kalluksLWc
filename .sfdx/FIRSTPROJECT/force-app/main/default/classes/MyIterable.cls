public class MyIterable implements Iterable<String> {
    private List<String> strings;

    // Constructor to initialize the list of strings
    public MyIterable(List<String> strings) {
        this.strings = strings;
    }

    // Implement the iterator() method required by the Iterable interface
    public Iterator<String> iterator() {
        //return strings.iterator();
        return this.strings.iterator();
        }
}