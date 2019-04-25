package com.Newsprocessing.util;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Basedao {

    private static final String driver = "com.mysql.cj.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost:3306/bignewsexplosion?charcterEncoding=UTF-8&&useSSL=false&&serverTimezone=GMT%2B8";
    private static final String user = "root";
    private static final String pwd = "51880975asd";

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    static {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    //连接
    private Connection getConnection() {
        try {
            if (conn == null || conn.isClosed()) {
                conn = DriverManager.getConnection(url, user, pwd);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }



    //查
/*    public <E> List<E> query(String sql, Object[] param, RowMapper<E> rowMapper) {
        try {
            pstmt = getConnection().prepareStatement(sql);
            if (param != null && param.length > 0) {
                int i = 1;
                for (Object o : param) {
                    pstmt.setObject(i++, o);
                }
            }
            rs = pstmt.executeQuery();
            List<E> eList = new ArrayList<>();
            if (rs != null) {
                while (rs.next()) {
                    E e = rowMapper.rowmap(rs);
                    eList.add(e);
                }
            }
            return eList;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }*/



    //插入语句 添删改查方法 返回list集合结果

    public <E> List<E> query(String sql, Object[] param, RowMapper<E> map) {

        try {
            pstmt = getConnection().prepareStatement(sql);
            if (param != null && param.length > 0) {
                int i = 1;
                for (Object o : param) {
                    pstmt.setObject(i++, o);
                }
            }
            System.out.println(pstmt);
            rs = pstmt.executeQuery();
            List<E> list = new ArrayList<>();
            while (rs != null && rs.next()) {
                E e = map.rowmap(rs);
                list.add(e);
            }
            return list;

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll();
        }
        return null;
    }
//添加数据

    public int insert(String sql, Object[] param) {
        int id = 0;
        try {
            pstmt = getConnection().prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            if (param != null && param.length > 0) {
                for (int i = 0; i < param.length; i++) {
                    pstmt.setObject(i + 1, param[i]);
                }
            }
            System.out.println(pstmt);
            int result = pstmt.executeUpdate();
            if (result > 0) {
                rs = pstmt.getGeneratedKeys();
                if (rs != null && rs.next()) {
                    id = rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll();
        }
        return id;
    }

//修改 返回

    public int update(String sql, Object[] param) {
        try {
            pstmt = getConnection().prepareStatement(sql);
            if (param != null && param.length > 0) {
                int i = 1;
                for (Object o : param) {
                    pstmt.setObject(i++, o);
                }
            }
            System.out.println(pstmt);
            return pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll();
        }
        return -1;
    }



    //关闭通道
    private void closeAll() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
