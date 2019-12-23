import org.springframework.stereotype.Component;

@Component
public class Mapper {

	public Cliente mapearStringACliente(String str) {
		String nombre = str.substring(0, 9);
		String apellido = str.substring(11, 20);
		String dni = str.substring(22, 31);
		String cbu = str.substring(33, 54);
		String an = str.substring(56, 75);
		String mo = str.substring(77, 79);
		double am = Double.parseDouble(str.substring(81, 100));
		Cliente client = new Cliente(nombre, apellido, dni, cbu, an, mo, am);

		return client;
	}
}
