package Lab1_TBD.repositories;

import Lab1_TBD.entities.EmergencyEntity;
import Lab1_TBD.entities.VolunteerEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.util.List;

@Repository
public class EmergencyRepositoryImp implements EmergencyRepository{

    @Autowired
    private Sql2o sql2o;

    @Autowired
    private JwtMiddlewareRepositoryImp JWT;

    @Override
    public List<EmergencyEntity> findAll(String token) {
        if(JWT.validateToken(token)) {
            String sql = "SELECT * FROM emergency ORDER BY id";
            try (Connection con = sql2o.open()) {
                return con.createQuery(sql).executeAndFetch(EmergencyEntity.class);
            } catch (Exception e) {
                System.out.println(e.getMessage());
                return null;
            }
        }
        return null;
    }


    @Override
    public EmergencyEntity save(EmergencyEntity emergency) {
        try(Connection con = sql2o.open()) {
            con.createQuery("INSERT INTO emergency (id, id_institution, state, name, description, responsible_coordinator, latitude, longitude)" +
                            "values (:id, :id_institution, :state, :name, :description, :responsible_coordinator, :latitude, :longitude)")
                    .addParameter("id", emergency.getId())
                    .addParameter("id_institution", emergency.getId_institution())
                    .addParameter("state", emergency.isState())
                    .addParameter("name", emergency.getName())
                    .addParameter("description", emergency.getDescription())
                    .addParameter("responsible_coordinator", emergency.getResponsible_coordinator())
                    .addParameter("latitude", emergency.getLatitude())
                    .addParameter("longitude", emergency.getLongitude())
                    .executeUpdate().getKey();

            con.createQuery("UPDATE emergency " +
                            "SET geom = ST_SetSRID(ST_MakePoint(longitude, latitude), 4326) " +
                            "WHERE id = :id")
                    .addParameter("id", emergency.getId())
                    .executeUpdate();

            return emergency;
        } catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public EmergencyEntity findById(Long id) {
        try(Connection con = sql2o.open()){
            return con.createQuery("SELECT * FROM emergency WHERE id = :id")
                    .addParameter("id", id)
                    .executeAndFetchFirst(EmergencyEntity.class);
        } catch(Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public EmergencyEntity update(EmergencyEntity emergency) {
        try(Connection con = sql2o.open()){
            con.createQuery("UPDATE emergency SET id_institution = :id_institution, state = :state," +
                    " name = :name, description = :description, responsible_coordinator = :responsible_coordinator," +
                            " latitude = :latitude, longitude = :longitude " +
                            "WHERE id = :id")
                    .addParameter("id", emergency.getId())
                    .addParameter("id_institution", emergency.getId_institution())
                    .addParameter("state", emergency.isState())
                    .addParameter("name", emergency.getName())
                    .addParameter("description", emergency.getDescription())
                    .addParameter("responsible_coordinator", emergency.getResponsible_coordinator())
                    .addParameter("latitude", emergency.getLatitude())
                    .addParameter("longitude", emergency.getLongitude())
                    .executeUpdate();

            con.createQuery("UPDATE emergency " +
                            "SET geom = ST_SetSRID(ST_MakePoint(longitude, latitude), 4326) " +
                            "WHERE id = :id")
                    .addParameter("id", emergency.getId())
                    .executeUpdate();

            return emergency;
        } catch(Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public boolean deleteById(Long id){
        int deletedEmergency;
        try(Connection con = sql2o.open()) {
            deletedEmergency =  con.createQuery("DELETE FROM emergency WHERE id = :id")
                    .addParameter("id", id)
                    .executeUpdate().getResult();
            return deletedEmergency == 1;
        } catch(Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }



    @Override
    public Integer getActiveTasksByIdEmergency(Long id) {
        String sql = "SELECT getActiveTasksByIdEmergency(:id)";
        try(Connection con = sql2o.open()) {
            return con.createQuery(sql)
                    .addParameter("id", id)
                    .executeScalar(Integer.class);
        } catch(Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    @Override
    public List<VolunteerEntity> getVolunteersInEmergencyRadius(Long id, Double radius) {
        String sql = "SELECT DISTINCT v.* FROM volunteer v, ranking r, task t, emergency e " +
                "WHERE v.id = r.id_volunteer AND r.id_task = t.id AND t.id_emergency = :id AND e.id = :id AND " +
                "ST_Distance(ST_Transform(e.geom, 32719), ST_Transform(v.geom, 32719)) <= :radius";
        try(Connection con = sql2o.open()) {
            return con.createQuery(sql)
                    .addParameter("id", id)
                    .addParameter("radius", radius)
                    .executeAndFetch(VolunteerEntity.class);
        } catch(Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
}
