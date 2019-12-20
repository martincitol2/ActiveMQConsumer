
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cliente")
public class Cliente {

	@Override
	public String toString() {
		return "Cliente [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", dni=" + dni + ", nup=" + nup
				+ ", cbu=" + cbu + ", numeroDeCuenta=" + numeroDeCuenta + ", moneda=" + moneda + ", importe=" + importe
				+ "]";
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	private String nombre;

	private String apellido;

	private String dni;

	private String nup;

	private String cbu;

	private String numeroDeCuenta;

	private String moneda;

	private double importe;

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getNup() {
		return nup;
	}

	public void setNup(String nup) {
		this.nup = nup;
	}

	public String getCbu() {
		return cbu;
	}

	public void setCbu(String cbu) {
		this.cbu = cbu;
	}

	public String getNumeroDeCuenta() {
		return numeroDeCuenta;
	}

	public void setNumeroDeCuenta(String numeroDeCuenta) {
		this.numeroDeCuenta = numeroDeCuenta;
	}

	public String getMoneda() {
		return moneda;
	}

	public void setMoneda(String moneda) {
		this.moneda = moneda;
	}

	public double getImporte() {
		return importe;
	}

	public void setImporte(double importe) {
		this.importe = importe;
	}

	public Cliente() {
	}

	public Cliente(String nombre, String apellido, String dni, String nup, String cbu, String numeroDeCuenta,
			String moneda, double importe) {
		super();
		setNombre(nombre);
		setApellido(apellido);
		setDni(dni);
		setNup(nup);
		setCbu(cbu);
		setNumeroDeCuenta(numeroDeCuenta);
		setMoneda(moneda);
		setImporte(importe);
	}

}
