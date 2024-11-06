import java.util.concurrent.*;

public class Cuenta {
	private int saldo;
	private String nombreCuenta;

	public Cuenta(int saldoInicial, String nombre) {
		saldo = saldoInicial;
		nombreCuenta = nombre;
	}

	public void deposita(int monto) {
		saldo += monto;
	}

	public void retira(int monto) {
		saldo -= monto;
	}

	public int getSaldo() {
		return saldo;
	}

	public String getNombre() {
		return nombreCuenta;
	}

	public static void main(String args[]) throws InterruptedException {
		// creating a Semaphore object
		// with number of permits 1
		Semaphore sem = new Semaphore(1);

		Cuenta c1 = new Cuenta(100, "Uno");
		Cuenta c2 = new Cuenta(500, "Dos");

		// creating two threads with name A and B
		// Note that thread A will increment the count
		// and thread B will decrement the count
		MyThread t1 = new MyThread(sem, "Cuenta1", c1);
		MyThread t2 = new MyThread(sem, "Cuenta2", c2);

		// stating threads A and B
		t1.start();
		t2.start();

		// waiting for threads A and B
		t1.join();
		t2.join();

		// count will always remain 0 after
		// both threads will complete their execution
		System.out.println("Saldo cuenta1: " + c1.getSaldo());
		System.out.println("Saldo cuenta2: " + c2.getSaldo());
	}
}

class MyThread extends Thread {
	Semaphore sem;
	String threadName;
	Cuenta c;

	public MyThread(Semaphore sem, String threadName, Cuenta c) {
		super(threadName);
		this.sem = sem;
		this.threadName = threadName;
		this.c = c;
	}

	@Override
	public void run() {
		// run by thread A
		if (this.c.getNombre().equals("Uno")) {
			System.out.println("Starting " + threadName);
			try {
				// First, get a permit.
				System.out.println(threadName + " is waiting for a permit.");

				// acquiring the lock
				sem.acquire();

				System.out.println(threadName + " gets a permit.");

				// Now, accessing the shared resource.
				// other waiting threads will wait, until this
				// thread release the lock
				for (int i = 0; i < 5; i++) {
					this.c.deposita(100);
					System.out.println("Thread c1");
					System.out.println("Nuevo monto: " + this.c.getSaldo());

					// Now, allowing a context switch -- if possible.
					// for thread B to execute
					Thread.sleep(10);
				}
			} catch (InterruptedException exc) {
				System.out.println(exc);
			}

			// Release the permit.
			System.out.println(threadName + " releases the permit.");
			sem.release();
		}

		// run by thread B
		else {
			System.out.println("Starting " + threadName);
			try {
				// First, get a permit.
				System.out.println(threadName + " is waiting for a permit.");

				// acquiring the lock
				sem.acquire();

				System.out.println(threadName + " gets a permit.");

				// Now, accessing the shared resource.
				// other waiting threads will wait, until this
				// thread release the lock
				for (int i = 0; i < 5; i++) {
					this.c.retira(100);
					System.out.println("Thread c2");
					System.out.println("Nuevo monto: " + this.c.getSaldo());

					// Now, allowing a context switch -- if possible.
					// for thread A to execute
					Thread.sleep(10);
				}
			} catch (InterruptedException exc) {
				System.out.println(exc);
			}
			// Release the permit.
			System.out.println(threadName + " releases the permit.");
			sem.release();
		}
	}
}