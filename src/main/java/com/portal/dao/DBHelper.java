package com.portal.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;



import com.portal.exception.PortalException;

public class DBHelper {

	  
	  private final String DB_AB = "ad";
	  private final String USER_ADUSER = "root";



	  

	  
	  public static Connection getConnection() throws  SQLException, PortalException, ClassNotFoundException 
	{
		Class.forName("com.mysql.jdbc.Driver");
		String connectionUrl = "jdbc:mysql://localhost:3306/ad?useUnicode=true&characterEncoding=UTF-8&user=aduser&password=StrangerThings";
		Connection conn = DriverManager.getConnection(connectionUrl);
		return conn;

	}
	  
	  
	  public static boolean isValidConnection(Connection conn)
	  {
	    try 
	    {
	        if(!conn.isClosed() && conn.isValid(1))
	        {
	            return true;
	        }
	    } 
	    catch (SQLException e) 
	    {
	    	System.out.println(e.getMessage());
	    }
	    return false;
	  }
	  
	  public void executeQuerySP(DAO dao, int callbackId) throws PortalException
	  {
	      executeQuerySP(DB_AB, dao, callbackId);
	  }
	  public void executeQuerySP(String database, DAO dao, int callbackId) throws PortalException
	  {
	    ResultSet rslt = null;
	    CallableStatement cStmt = null;
	    Connection conn = null;

	    try
	    {
	      conn = getConnection();
	      conn.setAutoCommit(false);
	      cStmt = dao.prepareCall(conn, callbackId);
	      boolean hasResults = cStmt.execute();
	      if (hasResults)
	      {
	        rslt = cStmt.getResultSet();
	        dao.processResultSet(rslt, callbackId);
	      }
	      conn.commit();
	    }
	    catch (SQLException se)
	    {

	      if (conn != null)
	      {
	        try
	        {
	          conn.rollback();
	        }
	        catch (Exception ex)
	        {
	          // ignore
	        }
	      }
	      throw new PortalException(se.getMessage(), se);
	    }
	    catch (Exception e)
	    {
	    	System.out.println("An exception has occurred while executing stored procedure:: "
	              + e);
	      System.out.println("The exception stack trace : "+ (Exception) e);
	      if (conn != null)
	      {
	        try
	        {
	          conn.rollback();
	        }
	        catch (Exception ex)
	        {
	          // ignore
	        }
	      }
	      //e.printStackTrace();
	      throw new PortalException(e);
	    }
	    finally
	    {
	      try
	      {
	        if (rslt != null) rslt.close();
	        if (cStmt != null) cStmt.close();
	        if (conn != null) conn.close();
	      }
	      catch (Exception e)
	      {
	        System.out.println("An exception has occurred while cleaning up db resources: "
	                + e);
	        System.out.println("The exception stack trace : "+ e.getMessage());
	      }
	    }
	  }
}
