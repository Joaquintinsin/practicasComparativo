import java.util.ArrayList;

public class Ej9 {	
    public Integer funcionParametrosVariable(Object... params) {
        ArrayList<Object> list = new ArrayList<>();
        for (Object elem : params) {
            list.add(elem);
        }
        System.out.println("cant parametros: " + list.size());
        return 1;
    }

    public static void main (String[] args) {
        Ej9 ob = new Ej9();
        Integer res = ob.funcionParametrosVariable(1, 2, 3);
        System.err.println(res);
        Integer res1 = ob.funcionParametrosVariable(1, 2, 3, 4);
        System.err.println(res1);
        Integer res2 = ob.funcionParametrosVariable(1, 2, 3, 4,5 );
        System.err.println(res2);
    }
}
