package sprint.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sprint.model.entity.Oficina;
import sprint.model.repository.IOficinaRepository;


@Service
public class OficinaService {

		@Autowired
		private IOficinaRepository officeRepo;
		
		public OficinaService() {
			super();
		}
		
		public List<Oficina> getAll(){
			return officeRepo.findAll();
		}
		
		public Oficina getOne(int id) {
			return officeRepo.getOne(id);
		}
		
		public Oficina get(int id) {
			return officeRepo.findById(id).get();
		}
		
		public void create(Oficina o) {
			officeRepo.save(o);
		}
		
		public void update(Oficina o) {
			officeRepo.save(o);
		}
		
		public void delete(int id) {
			officeRepo.delete(officeRepo.getOne(id));
		}
		
		public void deleteById(int id) {
			officeRepo.deleteById(id);
		}
}
