package com.Newsprocessing.model.dao;

import com.Newsprocessing.model.entlty.News;
import com.Newsprocessing.util.Basedao;
import com.Newsprocessing.util.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class Newsdaoo extends Basedao {
    public List<News> selectAll() {
        String sql = "select * from news";
        Object[] param = null;
        return super.query(sql, param, new NewRowMapper());
    }

    class NewRowMapper implements RowMapper<News> {
        @Override
        public News rowmap(ResultSet rs) throws SQLException {
            News allnew = new News(
                    rs.getInt("nid"),
                    rs.getString("ninfo")
            );
            return allnew;
        }
    }
}
