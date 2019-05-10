package kz.online.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserRole {

    private Integer id;
    private Integer userCompanyId;
    private String rfCode;
}
