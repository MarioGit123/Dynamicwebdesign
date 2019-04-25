package com.Newsprocessing.model.entlty;

public class News {
    private Integer nid;
    private String ninfo;

    public News(Integer nid, String ninfo) {
        this.nid = nid;
        this.ninfo = ninfo;
    }

    public News() {
    }

    public Integer getNid() {
        return nid;
    }

    public void setNid(Integer nid) {
        this.nid = nid;
    }

    public String getNinfo() {
        return ninfo;
    }

    public void setNinfo(String ninfo) {
        this.ninfo = ninfo;
    }

    @Override
    public String toString() {
        return "News{" +
                "nid=" + nid +
                ", ninfo='" + ninfo + '\'' +
                '}';
    }

}
