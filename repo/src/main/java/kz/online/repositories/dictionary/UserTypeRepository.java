package kz.online.repositories.dictionary;

import kz.online.entity.dictionary.UserTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserTypeRepository extends JpaRepository<UserTypeEntity, Integer> {
}
