
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.commons.lang.StringUtils;

@Entity
@Table(name = "cliente")
public class Cliente {

	   private String name;

	    private String surname;

	    private String dni;

	    @Id
	    private String cbu;
	    @Column(name="account_number")
	    private String accountNumber;

	    private String currency;

	    private Double amount;

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getSurname() {
	        return surname;
	    }

	    public void setSurname(String surname) {
	        this.surname = surname;
	    }

	    public String getDni() {
	        return dni;
	    }

	    public void setDni(String dni) {
	        this.dni = dni;
	    }

	    public String getCbu() {
	        return cbu;
	    }

	    public void setCbu(String cbu) {
	        this.cbu = cbu;
	    }

	    public String getAccountNumber() {
	        return accountNumber;
	    }

	    public void setAccountNumber(String accountNumber) {
	        this.accountNumber = accountNumber;
	    }

	    public String getCurrency() {
	        return currency;
	    }

	    public void setCurrency(String currency) {
	        this.currency = currency;
	    }

	    public Double getAmount() {
	        return amount;
	    }

	    public void setAmount(Double amount) {
	        this.amount = amount;
	    }
	    
	    public String stringAmount() {
	        String str = Double.toString(amount);
	        String st = StringUtils.leftPad(str, 20, "0");
	        st = st.replace(".", "0");
	        return st;
	    }

	    @Override
	    public String toString() {
	        return name + ";" + surname + ";" + dni + ";"+ cbu + ";" + accountNumber + ";" + currency + ";" + stringAmount();
	    }
	    
	    public Cliente(String name,String surname,String dni,String cbu,String accountNumber,String currency,Double amount) {
	    	this.setName(name);
	    	this.setSurname(surname);
	    	this.setDni(dni);
	    	this.setCbu(cbu);
	    	this.setAccountNumber(accountNumber);
	    	this.setCurrency(currency);
	    	this.setAmount(amount);
	    }
	    
}
