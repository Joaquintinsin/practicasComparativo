public class Ej7MyObject {
    private static Integer cantVecesCreada = 0;
    private static Integer cantVecesFinalizada = 0;
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

    @Override
    protected void finalize() throws Throwable {
        cantVecesFinalizada++;
        System.out.println("Objeto " + nameObject + " finalizado (recolectado).");
        super.finalize();
    }

    public static void main (String[] args) {
        int i = 0;
        try {
            while (i < 50) {
                i++;
                Ej7MyObject mo = new Ej7MyObject(String.valueOf(i));
                System.out.println("My name is " + mo.myName());
                System.out.println("Adress/HashCode de Ej7MyObject llamado " + mo.myName() + " es: " + mo.hashCode());
                System.gc();
                if (cantVecesFinalizada > 0) {
                    System.out.println("Recolector de basura activado!");
                    // break;
                }
            }
        } catch (OutOfMemoryError e) {
            System.out.println("Sin mas memoria: " + e.getMessage());
        }
        
        System.out.println("Cantidad de objetos creados: " + cantVecesCreada);
        System.out.println("Cantidad de objetos finalizados: " + cantVecesFinalizada);

        // Verificar si todos los objetos fueron recolectados
        if (cantVecesCreada.equals(cantVecesFinalizada)) {
            System.out.println("Todos los objetos finalizaron.");
        }
        while (true){
            int j = 0;
        }
    }
}
