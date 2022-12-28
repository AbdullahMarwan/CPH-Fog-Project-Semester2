package dat.backend.model.entities;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
    private List<Carport> carportList = new ArrayList<>();

    public ShoppingCart() {
    }

    public void addToCart(Carport carport) {
        carportList.add(carport);
    }

    public int getNumberOfCarports() {
        return carportList.size();
    }

    public List<Carport> getCarportList() {
        return carportList;
    }

    public void resetCart() {
        carportList.clear();
    }
}
