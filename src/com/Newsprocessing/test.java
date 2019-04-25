package com.Newsprocessing;

import com.Newsprocessing.model.dao.Newsdaoo;
import com.Newsprocessing.model.entlty.News;

import java.util.List;

public class test {
    public static void main(String[] args) {
        Newsdaoo nw=new Newsdaoo();
        List<News> list=nw.selectAll();

        for(News s:list){
            System.out.println(s.getNinfo());
        }
    }
}
