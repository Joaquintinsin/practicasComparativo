public class B extends A {
    String m1() {
        return "m1 de B";
    }

    String m2() {
        return "m2 de B";
    }

    public static void main(String[] args) {
        B ob = new B();
        System.out.println(ob.m());
        System.out.println(ob.m1());
        System.out.println(ob.m2());
    }
}

class A {
    String m() {
        return "m de A";
    }

    String m1() {
        return "m1 de A";
    }
}
