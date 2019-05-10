package kz.online.repositories.dictionary;

import kz.online.entity.dictionary.ServiceEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ServiceRepository extends JpaRepository<ServiceEntity, Integer> {
}
