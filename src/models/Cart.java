package models;

public class Cart {

    private String name;
    private int count;

    public void setCount(int count) {
        this.count = count;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCount() {
        return count;
    }

    public String getName() {
        return name;
    }

}
