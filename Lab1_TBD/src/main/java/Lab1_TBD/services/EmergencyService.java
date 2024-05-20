package Lab1_TBD.services;

import Lab1_TBD.entities.EmergencyEntity;
import Lab1_TBD.entities.VolunteerEntity;
import Lab1_TBD.repositories.EmergencyRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmergencyService {

    private final EmergencyRepository emergencyRepository;
    EmergencyService(EmergencyRepository emergencyRepository) {
        this.emergencyRepository = emergencyRepository;
    }

    public EmergencyEntity saveEmergency(EmergencyEntity emergency) { return emergencyRepository.save(emergency); }
    public EmergencyEntity getEmergencyById(Long id) { return emergencyRepository.findById(id); }

    public List<VolunteerEntity> getVolunteersInEmergencyRadius(Long id, Long radius) { return emergencyRepository.getVolunteersInEmergencyRadius(id, radius); }
    public EmergencyEntity updateEmergency(EmergencyEntity emergency) { return emergencyRepository.update(emergency); }
    public boolean deleteEmergency(Long id) { return emergencyRepository.deleteById(id); }
    public List<EmergencyEntity> getAll(String token) {
        return emergencyRepository.findAll(token);
    }
    public Integer getActiveTasksCount(Long id) {
        return emergencyRepository.getActiveTasksByIdEmergency(id);
    }
}
