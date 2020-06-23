package com.jiyun.ssm.pojo;

import java.util.List;

public class Category {
    private  Integer cid;
    private  String cname;
    private List<Goods> list;

    @Override
    public String toString() {
        return "Category{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", list=" + list +
                '}';
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public List<Goods> getList() {
        return list;
    }

    public void setList(List<Goods> list) {
        this.list = list;
    }

    public Category(Integer cid, String cname, List<Goods> list) {
        this.cid = cid;
        this.cname = cname;
        this.list = list;
    }

    public Category() {
    }
}
