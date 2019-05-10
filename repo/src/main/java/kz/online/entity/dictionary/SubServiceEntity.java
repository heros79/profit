package kz.online.entity.dictionary;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "RF_SUB_SERVICE")
public class SubServiceEntity implements Serializable {

    private static final long serialVersionUID = -6184504341013478673L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "RU_NAME")
    private String ruName;
    @Column(name = "EN_NAME")
    private String enName;
    @Column(name = "KZ_NAME")
    private String kzName;
    //TODO create many to one link
    /*private ServiceEntity serviceEntity;*/
}