package itiseveri.pcto.pcto.security;

import itiseveri.pcto.pcto.model.Lavoratore;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;


@Repository
public interface UserRepository extends JpaRepository<Lavoratore, String> {
    Optional<Lavoratore> findLavoratoreByUsername(String username);
}
