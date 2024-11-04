import java.util.ArrayList;

public class Pila<T> {
    ArrayList<T> s;
    int size;
    int halfSize;
    T firstElement;
    T lastElement;
    public Pila() {
        this.s = new ArrayList<T>();
        this.size = 0;
        this.halfSize = 0;
        this.firstElement = null;
        this.lastElement = null;
    }

    public int size() {
        return this.size;
    }

    public int halfSize() {
        return this.halfSize;
    }

    public T top() {
        return this.firstElement;
    }

    public T last() {
        return this.lastElement;
    }

    public boolean push(T elem) {
        try {
            this.firstElement = elem;
            this.s.add(0, elem);
            this.size++;
            this.halfSize = this.size / 2;
            this.lastElement = this.s.get(this.size);
            return True;
        } finally {
            return False;
        }
    }

    public T pop() {
        try {
            f = this.s.remove(0);
            this.firstElement = this.s.get(0);
            this.size--;
            this.halfSize = this.size / 2;
            return f;
        } finally {
            return null;
        }
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public boolean equals(Pila<T> other) {
        if (other == this) {
            return true;
        }
        if (other == null || this == null) {
            return false;
        }
        if (other.size() != this.size) {
            return false;
        }
        for (int i = 0; i < this.size; i++) {
            if (!this.s.get(i).equals(other.s.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static void main (String[] args) {
        Pila<Integer> p1 = new Pila<Integer>();
        Pila<String> p2 = new Pila<String>();
        p1.push(1);
        p1.push(2);
        p1.push(3);

        p2.push("Uno");
        p2.push("Dos");
        p2.push("Tres");

        System.out.println(p1.equals(p2));

    }
}
