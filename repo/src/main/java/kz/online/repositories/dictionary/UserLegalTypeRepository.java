package kz.online.repositories.dictionary;

import kz.online.entity.dictionary.UserLegalTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserLegalTypeRepository extends JpaRepository<UserLegalTypeEntity, Integer> {
}
