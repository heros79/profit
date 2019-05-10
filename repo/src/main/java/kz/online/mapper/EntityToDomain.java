package kz.online.mapper;

import kz.online.domain.Comment;
import kz.online.domain.Topic;
import kz.online.domain.User;
import kz.online.entity.CommentEntity;
import kz.online.entity.TopicEntity;
import kz.online.entity.UserEntity;
import org.mapstruct.Mapper;

@Mapper
public abstract class EntityToDomain {

    public abstract User UserModel(UserEntity userEntity);

    public abstract Topic topic(TopicEntity topicEntity);

    public abstract Comment comment(CommentEntity commentEntity);
}
