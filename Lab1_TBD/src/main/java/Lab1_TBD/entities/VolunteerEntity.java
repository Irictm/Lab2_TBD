package Lab1_TBD.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class VolunteerEntity {
    private Long id;

    private Boolean availability;
    private String name;
    private String password;
    private Long age;
    private Double latitude;
    private Double longitude;
    private String geom;
}