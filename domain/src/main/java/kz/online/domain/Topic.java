package kz.online.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Topic {

    private String mainImagePath;
    private String imagesPaths;
    private String descriptions;
    private Double price;
    private Integer AverageRating;
}