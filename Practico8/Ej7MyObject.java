public class Ej7MyObject {
    private static Integer cantVecesCreada = 0;
    private String nameObject;
    {
        System.out.println("Clase Ej7MyObject creada por primera vez!");
    }

    public Ej7MyObject(String name) {
        cantVecesCreada++;
        nameObject = name;
    }

    public Integer timesCreated() {
        return cantVecesCreada;
    }

    public String myName() {
        return nameObject;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public static void main (String[] args) {
        int i;
        for (i = 1; i <= 50; i++) {
            Ej7MyObject mo = new Ej7MyObject(String.valueOf(i));
            System.out.println("My name is " + mo.myName());
            System.out.println("Adress/HashCode de Ej7MyObject llamado " + mo.myName() + " es: " + mo.hashCode());
        }
    }
}
