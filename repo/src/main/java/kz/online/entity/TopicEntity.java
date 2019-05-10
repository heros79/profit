package kz.online.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "TOPICS")
public class TopicEntity implements Serializable {

    private static final long serialVersionUID = -7184475118216008822L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "TITLE")
    private String title;
    @Column(name = "MAIN_IMAGE_PATH")
    private String mainImagePath;
    @Column(name = "IMAGES_PATHS")
    private String imagesPaths;
    @Column(name = "DESCRIPTION")
    private String description;
    @Column(name = "PRICE", columnDefinition = "NUMBER(19, 2)")
    private Double price;
    @Column(name = "AVERAGE_RATING")
    private Integer averageRating;
    //TODO create many to onw link
    /*private UserGeneralInformationEntity userGeneralInformationEntity;*/
}