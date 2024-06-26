package Lab1_TBD.repositories;

import Lab1_TBD.entities.EmergencyEntity;
import Lab1_TBD.entities.VolunteerEntity;

import java.util.List;

public interface EmergencyRepository {

    EmergencyEntity save(EmergencyEntity emergency);
    EmergencyEntity findById(Long id);
    EmergencyEntity update(EmergencyEntity emergency);
    boolean deleteById(Long id);
    List<EmergencyEntity> findAll(String token);
    Integer getActiveTasksByIdEmergency(Long id);
    List<VolunteerEntity> getVolunteersInEmergencyRadius(Long id, Double radius);
}
