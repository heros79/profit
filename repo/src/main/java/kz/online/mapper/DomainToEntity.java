package kz.online.mapper;

import kz.online.domain.Comment;
import kz.online.domain.Topic;
import kz.online.domain.User;
import kz.online.entity.CommentEntity;
import kz.online.entity.TopicEntity;
import kz.online.entity.UserEntity;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public abstract class DomainToEntity {

    public abstract UserEntity userEntity(User user);

    public abstract TopicEntity topicEntity(Topic topic);

    public abstract CommentEntity commentEntity(Comment comment);
}
