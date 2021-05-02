package itiseveri.pcto.pcto.repository;

import itiseveri.pcto.pcto.model.NonConformita;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;

@Repository
public interface NonConformitaRepository extends CrudRepository<NonConformita, Long> {
    @Query(value = "select * from nonconformità n where n.data_fine is null ", nativeQuery = true)
    Collection<NonConformita> findAllNonConformitaAperte();

    @Query(value = "select * from nonconformità n where n.data_fine is not null ", nativeQuery = true)
    Collection<NonConformita> findAllNonConformitaChiuse();


}
