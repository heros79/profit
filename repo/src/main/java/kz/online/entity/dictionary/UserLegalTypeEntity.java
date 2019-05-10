package kz.online.entity.dictionary;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@Table(name = "RF_USER_LEGAL_TYPE")
public class UserLegalTypeEntity implements Serializable {

    private static final long serialVersionUID = -5083291494502245363L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "LEGAL_NAME")
    private String legalName;
    @Column(name = "TYPE_STATUS")
    private String typeStatus;
}