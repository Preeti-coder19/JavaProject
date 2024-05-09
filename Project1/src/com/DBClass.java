package com;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

public class DBClass {

public Connection con;

public Connection getCon(){

try {

Class.forName("com.mysql.jdbc.Driver");

con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/preeti", "root", "root");

} catch (ClassNotFoundException e) {



e.printStackTrace();

} catch (SQLException e) {



e.printStackTrace();

}

return con;

}}
