package Lab1_TBD.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmergencyEntity {
    private Long id;
    private Long id_institution;
    private boolean state;
    private String name;
    private String description;
    private String responsible_coordinator;
    private Double latitude;
    private Double longitude;
    private String geom;
}
