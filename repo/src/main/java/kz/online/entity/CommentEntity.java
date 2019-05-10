package kz.online.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "COMMENT")
public class CommentEntity implements Serializable {

    private static final long serialVersionUID = 1757760887082170053L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "TITLE")
    private String title;
    @Column(name = "DESCRIPTION")
    private String description;
    @Column(name = "RATING")
    private Integer rating;
    //TODO create many to one link
    /*private User user;*/
}