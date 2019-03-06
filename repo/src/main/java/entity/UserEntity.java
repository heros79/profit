package entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "USERS")
public class UserEntity implements Serializable {

    private static final long serialVersionUID = 4875513908785399148L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "USER_LOGIN")
    private String login;

    @Column(name = "USER_PASSWORD")
    private String password;

    @Column(name = "CONFIRM_EMAIL")
    private String confirmEmail;
}