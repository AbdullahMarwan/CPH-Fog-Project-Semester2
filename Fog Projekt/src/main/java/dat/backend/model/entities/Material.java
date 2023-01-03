package dat.backend.model.entities;

import jakarta.persistence.*;

@Entity
@NamedQuery(name="getAllMaterials", query = "SELECT m FROM Material m")
@Table(name = "materials")
public class Material {
    @Id
    @Column(name = "material_id")
    private int materialId;
    private String name;
    private int price;
    private int unitId;
    private String description;
    private int length;

    public Material(int materialId, String name, int price, int unitId, String description, int length) {
        this.materialId = materialId;
        this.name = name;
        this.price = price;
        this.unitId = unitId;
        this.description = description;
        this.length = length;
    }

    public Material() {

    }

    public int getMaterialId() {
        return materialId;
    }

    public void setMaterialId(int materialId) {
        this.materialId = materialId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getUnitId() {
        return unitId;
    }

    public void setUnitId(int unitId) {
        this.unitId = unitId;
    }
}

