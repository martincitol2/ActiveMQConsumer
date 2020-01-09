import org.springframework.stereotype.Component;

@Component
public class Mapper {

	public Cliente mapearStringACliente(String str) {
		String nombre = str.substring(0, 10);
		String apellido = str.substring(11, 21);
		String dni = str.substring(22, 32);
		String cbu = str.substring(33, 55);
		String an = str.substring(56, 76);
		String mo = str.substring(77, 80);
		double am = Double.parseDouble(str.substring(81, 99));
		Cliente client = new Cliente(nombre, apellido, dni, cbu, an, mo, am);

		return client;
	}
}
