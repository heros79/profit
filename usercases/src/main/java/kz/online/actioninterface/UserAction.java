package kz.online.actioninterface;

import kz.online.domain.Topic;
import kz.online.domain.User;

public interface UserAction {

    public void createUser(User user);

    public void updateUser(Integer id);

    public void removeUser(User user);

    public User findUserById(Integer id);

    public User findUserByEmail(String email);

    public void CreateTopic(Integer userId, Topic topic);
}
