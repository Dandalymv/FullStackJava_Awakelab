package sprint.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sprint.model.entity.Contacto;

import sprint.model.repository.IContactoRepository;

@Service
public class ContactoService {

	@Autowired
	private IContactoRepository contactoRepo;
	
	
	public ContactoService() {
		super();
	}
	
	public List<Contacto> getAll(){
		return contactoRepo.findAll();
	}
	
	public Contacto getOne(int id) {
		return contactoRepo.getOne(id);
	}
	
	public Contacto get(int id) {
		return contactoRepo.findById(id).get();
	}
	
	public void create(Contacto c) {
		contactoRepo.save(c);
	}
	
	public void update(Contacto c) {
		contactoRepo.save(c);
	}
	
	public void delete(int id) {
		contactoRepo.delete(contactoRepo.getOne(id));
	}
	
	public void deleteById(int id) {
		contactoRepo.deleteById(id);
	}
	
}
