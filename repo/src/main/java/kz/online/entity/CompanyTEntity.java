package kz.online.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "COMPANYT")
public class CompanyTEntity implements Serializable {

    private static final long serialVersionUID = -1445280071393806525L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "NAME")
    private String companyName;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "companyTEntities")
    private Set<UserTEntity> userTEntities;
}
