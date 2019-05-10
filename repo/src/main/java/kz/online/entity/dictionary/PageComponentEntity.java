package kz.online.entity.dictionary;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "RF_PAGE_COMPONENT")
public class PageComponentEntity implements Serializable {

    private static final long serialVersionUID = 4945662399632084204L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "COMPONENET_DESCRIPTION")
    private String componentDescription;
    @Column(name = "RU_NAME")
    private String ruName;
    @Column(name = "EN_NAME")
    private String enName;
    @Column(name = "KZ_NAME")
    private String kzName;
}