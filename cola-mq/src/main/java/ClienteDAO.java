import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ClienteDAO {

	public void enviarABaseDeDatos(Cliente client) {

		SessionFactory factory = new Configuration().configure().addAnnotatedClass(Cliente.class).buildSessionFactory();

// create session
		Session session = factory.getCurrentSession();

		try {
// create a student object

			System.out.println("Creating new client object...");

// start a transaction
			session.beginTransaction();

// save the student object

			session.save(client);

// commit transaction
			session.getTransaction().commit();
			System.out.println("Guardado en Base de Datos!");
		} finally {
			factory.close();
		}
	}
}
