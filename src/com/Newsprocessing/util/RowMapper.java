package com.Newsprocessing.util;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface RowMapper<E> {
    public E rowmap(ResultSet rs)throws SQLException;
}
