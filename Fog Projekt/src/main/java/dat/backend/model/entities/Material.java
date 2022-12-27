package dat.backend.model.entities;

public class Material {
    private int id;
    private String name;
    private int price;
    private int unitId;
    private String description;
    private int length;

    public Material(int id, String name, int price, int unitId, String description, int length) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.unitId = unitId;
        this.description = description;
        this.length = length;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
