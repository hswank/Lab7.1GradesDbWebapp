package gclab.lab71;

import java.util.List;
import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface GradesRepository extends MongoRepository<Grade, String> {
	List<Grade> findAll();
	
	Optional<Grade> findById(String id);
}
