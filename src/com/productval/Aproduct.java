package com.productval;

import java.math.BigDecimal;

public class Aproduct {
    /*
    * 请创建一个用于表示产品的JavaBean，
    * 有产品id，产品名、价格、产地、规格等属性，
    * 请在JSP中创建一个产品对象，
    * 保存到request作用域中，通过表达式语言（EL）将该产品对象的属性值读取出来。
    *
    * */

    private Integer pid;
    private String pname;
    private Double pprice;
    private String place;
    private String specification;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public double getPprice() {
        return pprice;
    }

    public void setPprice(double pprice) {
        this.pprice = pprice;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public Aproduct(Integer pid, String pname, double pprice, String place, String specification) {
        this.pid = pid;
        this.pname = pname;
        this.pprice = pprice;
        this.place = place;
        this.specification = specification;
    }

    public Aproduct() {
    }

    @Override
    public String toString() {
        return "Aproduct{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", pprice=" + pprice +
                ", place='" + place + '\'' +
                ", specification='" + specification + '\'' +
                '}';
    }
}
