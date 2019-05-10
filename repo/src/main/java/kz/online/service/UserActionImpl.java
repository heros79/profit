package kz.online.service;

import kz.online.actioninterface.UserAction;
import kz.online.domain.Topic;
import kz.online.domain.User;
import kz.online.entity.TopicEntity;
import kz.online.entity.UserEntity;
import kz.online.mapper.DomainToEntity;
import kz.online.mapper.EntityToDomain;
import kz.online.repositories.TopicRepository;
import kz.online.repositories.UserRepository;
import org.mapstruct.factory.Mappers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/*
* This class include User Domain CRUD implements methods
*/
@Service
public class UserActionImpl implements UserAction {

    private UserRepository userRepository;
    private TopicRepository topicRepository;
    private DomainToEntity domainToEntity;
    private EntityToDomain entityToDomain;

    @Autowired
    public UserActionImpl(UserRepository userRepository, TopicRepository topicRepository) {
        this.userRepository = userRepository;
        this.topicRepository = topicRepository;
        this.domainToEntity = Mappers.getMapper(DomainToEntity.class);
        this.entityToDomain = Mappers.getMapper(EntityToDomain.class);
    }

    @Override
    public void createUser(User user) {
        userRepository.save(domainToEntity.userEntity(user));
    }

    @Override
    public void updateUser(Integer id) {
        UserEntity entity = userRepository.getOne(id);
        userRepository.save(entity);
    }

    @Override
    public void removeUser(User user) {
        userRepository.delete(domainToEntity.userEntity(user));
    }

    @Override
    public User findUserById(Integer id) {
        return entityToDomain.UserModel(userRepository.getOne(id));
    }

    @Override
    public User findUserByEmail(String email) {
        return userRepository.findByConfirmEmail(email);
    }

    @Override
    public void CreateTopic(Integer userId, Topic topic) {
        topicRepository.save(domainToEntity.topicEntity(topic));
    }
}
