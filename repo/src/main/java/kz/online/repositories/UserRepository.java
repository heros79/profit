package kz.online.repositories;

import kz.online.domain.User;
import kz.online.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserEntity, Integer> {

    public User findByConfirmEmail(String email);
}
