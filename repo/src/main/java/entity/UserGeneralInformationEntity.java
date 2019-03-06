package entity;

import domain.User;
import entity.dictionary.UserTypesEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "USER_GENERAL_INFORMATION")
public class UserGeneralInformation implements Serializable {

    private static final long serialVersionUID = 739450772230076090L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "FIRST_NAME")
    private String firstName;
    @Column(name = "SECOND_NAME")
    private String lastName;
    @Column(name = "COMPANY_NAME")
    private String companyName;
    @Column(name = "DIRECTOR_FIRST_NAME")
    private String directorFirstName;
    @Column(name = "DIRECTOR_LAST_NAME")
    private String directorLastName;
    @Column(name = "CONTACT_PERSON")
    private String contactPerson;
    @Column(name = "E_MAIL")
    private String email;
    @Column(name = "MOBILE")
    private String mobile;
    @Column(name = "PHONE")
    private String phone;
    @Column(name = "WEB_SITE")
    private String webSite;
    @Column(name = "PHOTO_LOGO_PATH")
    private String logoPhotoPath;
    @Column(name = "COUNTRY")
    private String country;
    @Column(name = "CITY")
    private String city;
    @Column(name = "ADDRESS")
    private String address;
    //TODO add 
    private User user;

    private UserTypesEntity userTypesEntity;
}