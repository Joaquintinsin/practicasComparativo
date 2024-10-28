public class Ej9 {	
    public Integer funcionParametrosVariable(Object... params) {
        return 1;
    }

    public static void main (String[] args) {
        Ej9 ob = new Ej9();
        Integer res = ob.funcionParametrosVariable(1, 2, 3);
        System.err.println(res);
    }
}
