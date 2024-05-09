package NewPackage;

import java.sql.*;
import java.io.*;

public class DBClass {
	private String connurl, dburl, username, password;
	private Connection conn;
	private Statement st;
	private ResultSet rs;

	public Connection getConn() {
		try {
			connurl = "com.mysql.jdbc.Driver";
			dburl = "jdbc:mysql://localhost:3306/dinesh";
			username = "root";
			password = "";
			Class.forName(connurl);
			conn = DriverManager.getConnection(dburl, username, password);
		} catch (Exception e) {
			System.out.println("Exception : " + e.getMessage());
		}
		return conn;
	}

	public ResultSet getResultSet(String sql) {
		try {
			conn = getConn();
			st = conn.createStatement();
			rs = st.executeQuery(sql);
		} catch (Exception e) {
			System.out.println("Exception : " + e.getMessage());
		}
		return rs;
	}

//	public static String GetSourcePath() {
//		return "C:\\Users\\Indus\\Desktop\\Images\\";
//	}
//
//	public static String GetProjectPath() {
//		return "D:\\JavaWorkspace2\\April02Web\\WebContent\\img\\";
//	}

//	public void copy(File src, File dest) throws IOException {
//		InputStream is = null;
//		OutputStream os = null;
//		try {
//			is = new FileInputStream(src);
//			os = new FileOutputStream(dest);
//			// buffer size 1K
//			byte[] buf = new byte[1024];
//			int bytesRead;
//			while ((bytesRead = is.read(buf)) > 0) {
//				os.write(buf, 0, bytesRead);
//			}
//		} finally {
//			is.close();
//			os.close();
//		}
//	}

}
