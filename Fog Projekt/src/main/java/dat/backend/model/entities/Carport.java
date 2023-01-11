package dat.backend.model.entities;

import jakarta.persistence.*;

@Entity
@NamedQuery(name = "getAllCarports", query = "SELECT c FROM Carport c")
@Table(name = "carport")
public class Carport {
    @Id
    @Column(name = "carport_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int carportId;
    private int length;
    private int width;
    @Column(name = "total_price")
    private int totalPrice;
    @Column(name = "offer_accepted")
    private boolean offerAccepted = false;
    @Column(name = "payment_paid")
    private boolean paymentPaid = false;
    @Column(name = "has_shed")
    private boolean hasShed;
    @Column(name = "material_id")
    private int materialId = 1;

    public Carport(int carportId, int length, int width, int totalPrice, boolean offerAccepted, boolean paymentPaid, boolean hasShed, int materialId) {
        this.carportId = carportId;
        this.length = length;
        this.width = width;
        this.totalPrice = totalPrice;
        this.offerAccepted = offerAccepted;
        this.paymentPaid = paymentPaid;
        this.hasShed = hasShed;
        this.materialId = materialId;
    }

    public Carport(int length, int width, int totalPrice, boolean hasShed) {
        this.length = length;
        this.width = width;
        this.totalPrice = totalPrice;
        this.hasShed = hasShed;
    }

    public Carport() {
    }


    public int getCarportId() {
        return carportId;
    }

    public void setCarportId(int carportId) {
        this.carportId = carportId;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public boolean isOfferAccepted() {
        return offerAccepted;
    }

    public void setOfferAccepted(boolean offerAccepted) {
        this.offerAccepted = offerAccepted;
    }

    public boolean isPaymentPaid() {
        return paymentPaid;
    }

    public void setPaymentPaid(boolean paymentPaid) {
        this.paymentPaid = paymentPaid;
    }

    public boolean isHasShed() {
        return hasShed;
    }

    public void setHasShed(boolean hasShed) {
        this.hasShed = hasShed;
    }

    public int getMaterialId() {
        return materialId;
    }

    public void setMaterialId(int materialId) {
        this.materialId = materialId;
    }

}
