import javax.jms.Connection;
import javax.jms.Destination;
import javax.jms.Message;
import javax.jms.MessageConsumer;
import javax.jms.Session;
import javax.jms.TextMessage;

import org.apache.activemq.ActiveMQConnectionFactory;
import org.springframework.stereotype.Component;

@Component
public class Consume {

	public String consumeString() {

		String mensaje = "Estoy Vacio";

		try {

			// Create a ConnectionFactory
			ActiveMQConnectionFactory connectionFactory = new ActiveMQConnectionFactory("tcp://localhost:61616");

			// Create a Connection
			Connection connection = connectionFactory.createConnection();
			connection.start();

			// Create a Session
			Session session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);

			// Create the destination (Topic or Queue)
			Destination destination = session.createQueue("clientes");

			// Create a MessageConsumer from the Session to the Topic or Queue
			MessageConsumer consumer = session.createConsumer(destination);

			// Wait for a message
			Message message = consumer.receive(1000);
			if (message instanceof TextMessage) {
				TextMessage msj = (TextMessage) message;
				mensaje = msj.getText();
			}

			consumer.close();
			session.close();
			connection.close();
		} catch (Exception e) {
			System.out.println("Caught: " + e);
			e.printStackTrace();

		}
		return mensaje;
	}
}
