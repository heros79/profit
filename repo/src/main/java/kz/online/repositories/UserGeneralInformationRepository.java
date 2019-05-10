package kz.online.repositories;

import kz.online.entity.UserGeneralInformationEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserGeneralInformationRepository extends JpaRepository<UserGeneralInformationEntity, Integer> {
}
