package kz.online.domain;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Data
public class User {

    private String login;
    private String password;
    private String confirmEmail;
}