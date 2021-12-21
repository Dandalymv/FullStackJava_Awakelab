package sprint.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "oficinas")
public class Oficina {
	
	@Column(name = "nombre_oficina")
	private String nombreOficina;
	
	private String direccion;
	private String comuna;
	private String region;
	private String telefono;
	private String correo;
	private String espacios;
	private String horario;
	
	@Column(name = "valor")
	private String valorDiario;
	
	@Id
	@Column(name="idoficinas")
	int id;
	
	public Oficina() {
		super();
	}

	public Oficina(String nombreOficina, String direccion, String comuna, String region, String telefono, String correo,
			String espacios, String horario, String valorDiario, int id) {
		super();
		this.nombreOficina = nombreOficina;
		this.direccion = direccion;
		this.comuna = comuna;
		this.region = region;
		this.telefono = telefono;
		this.correo = correo;
		this.espacios = espacios;
		this.horario = horario;
		this.valorDiario = valorDiario;
		this.id = id;
	}



	public String getNombreOficina() {
		return nombreOficina;
	}



	public void setNombreOficina(String nombreOficina) {
		this.nombreOficina = nombreOficina;
	}



	public String getDireccion() {
		return direccion;
	}



	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}



	public String getComuna() {
		return comuna;
	}



	public void setComuna(String comuna) {
		this.comuna = comuna;
	}



	public String getRegion() {
		return region;
	}



	public void setRegion(String region) {
		this.region = region;
	}



	public String getTelefono() {
		return telefono;
	}



	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}



	public String getCorreo() {
		return correo;
	}



	public void setCorreo(String correo) {
		this.correo = correo;
	}



	public String getEspacios() {
		return espacios;
	}



	public void setEspacios(String espacios) {
		this.espacios = espacios;
	}



	public String getHorario() {
		return horario;
	}



	public void setHorario(String horario) {
		this.horario = horario;
	}



	public String getValorDiario() {
		return valorDiario;
	}



	public void setValorDiario(String valorDiario) {
		this.valorDiario = valorDiario;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	@Override
	public String toString() {
		return "Oficina [nombreOficina=" + nombreOficina + ", direccion=" + direccion + ", comuna=" + comuna
				+ ", region=" + region + ", telefono=" + telefono + ", correo=" + correo + ", espacios=" + espacios
				+ ", horario=" + horario + ", valorDiario=" + valorDiario + ", id=" + id + "]";
	}


	

}
