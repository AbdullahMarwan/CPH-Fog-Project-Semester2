package dat.backend.model.persistence;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Material;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CarportMapper {

    static List<Material> getMaterials(dat.backend.model.persistence.ConnectionPool connectionPool) {
        List<Material> materialList = new ArrayList<>();

        String sql = "select * from materials";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("material_id");
                    String name = rs.getString("name");
                    int price = rs.getInt("price");
                    int unit_id = rs.getInt("unit_id");
                    String description = rs.getString("description");
                    int length = rs.getInt("length");

                    Material newMaterial = new Material(id, name, price, unit_id, description, length);
                    materialList.add(newMaterial);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return materialList;
    }

}
