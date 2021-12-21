package sprint.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import sprint.model.entity.Contacto;

public interface IContactoRepository extends JpaRepository<Contacto, Integer> {

}
