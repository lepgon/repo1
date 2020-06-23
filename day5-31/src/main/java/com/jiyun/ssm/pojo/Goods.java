package com.jiyun.ssm.pojo;

public class Goods {
    private Integer id;
    private String name;
    private double price;
    private  Integer c_id;
    private Category category;

    public Integer getId() {
        return id;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", c_id=" + c_id +
                ", category=" + category +
                '}';
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Goods(Integer id, String name, double price, Integer c_id, Category category) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.c_id = c_id;
        this.category = category;
    }

    public Goods() {
    }
}
