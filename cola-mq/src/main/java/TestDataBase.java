import org.apache.log4j.Logger;

public class TestDataBase {

	public static void thread(Runnable runnable, boolean daemon) {
		Thread brokerThread = new Thread(runnable);
		brokerThread.setDaemon(daemon);
		brokerThread.start();

	}

	public static void main(String[] args) throws InterruptedException {
		
		Logger logger = Logger.getLogger(TestDataBase.class);

		while (true) {
			Consume consumidor = new Consume();
			String stringRecibido = consumidor.consumeString();
			if (!stringRecibido.equals("Estoy Vacio")) {

				Mapper map = new Mapper();
				Cliente client = map.mapearStringACliente(stringRecibido);
				ClienteDAO clientDao = new ClienteDAO();
				clientDao.enviarABaseDeDatos(client);
			}
			logger.info("Estamos Esperando Un Mensaje MQ");
			Thread.sleep(10000);
		}
	}

}