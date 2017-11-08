package com.portal.dao;

import java.sql.CallableStatement;
import  java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
public interface DAO {
	  public CallableStatement prepareCall(Connection conn, int callbackId)
			    throws  SQLException;
			  public void processResultSet(ResultSet rslt, int callbackId)
			    throws  SQLException;
}
