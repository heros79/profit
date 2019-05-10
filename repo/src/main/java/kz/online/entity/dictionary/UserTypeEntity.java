package kz.online.entity.dictionary;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "USER_TYPES")
public class UserTypeEntity implements Serializable {

    private static final long serialVersionUID = -4615181268479663433L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "TYPE_NAME")
    private String typeName;
}