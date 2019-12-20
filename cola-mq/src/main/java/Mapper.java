import org.springframework.stereotype.Component;

@Component
public class Mapper {

	public Cliente mapearStringACliente(String str) {
		String nombre = str.substring(0, 9);
		String apellido = str.substring(11, 20);
		String dni = str.substring(22, 31);
		String nup = str.substring(33, 52);
		String cbu = str.substring(54, 75);
		String an = str.substring(77, 96);
		String mo = str.substring(98, 100);
		double am = Double.parseDouble(str.substring(102, 120));
		Cliente client = new Cliente(nombre, apellido, dni, nup, cbu, an, mo, am);

		return client;
	}
}
