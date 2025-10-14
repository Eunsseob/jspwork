package board;

import java.sql.*;
import java.util.ArrayList;

public class BoardDao {
	private DBConnectionMgr pool = DBConnectionMgr.getInstance();
	Connection con;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	// 게시판 목록 가져오기
	public ArrayList<Boardlist> getBoardList(String keyField, String keyWord) {
		ArrayList<Boardlist> alist = new ArrayList<>();	
		try {
			con = pool.getConnection();
			if(keyWord.equals("") || keyWord==null) {
				sql = "select * from board order by num asc";	
			} else {
				sql = "select * from board where " + keyField + " like '%" + keyWord + "%' order by num asc";
			}
			rs = con.createStatement().executeQuery(sql);
			while(rs.next()) {
				Boardlist bean = new Boardlist();
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
				bean.setSubject(rs.getString("subject"));
				bean.setPos(rs.getInt("pos"));
				bean.setRef(rs.getInt("ref"));
				bean.setDepth(rs.getInt("depth"));
				bean.setRegdate(rs.getString("regdate"));
				bean.setCount(rs.getInt("count"));
				alist.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return alist;
	}
	
	// 
	public ArrayList<Boardlist> getList2() {
		ArrayList<Boardlist> alist = new ArrayList<>();	
		try {
			con = pool.getConnection();
			sql = "";
			rs = con.createStatement().executeQuery(sql);
			while(rs.next()) {
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return alist;
	}
}