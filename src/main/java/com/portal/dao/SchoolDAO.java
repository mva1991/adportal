package com.portal.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;

import com.portal.exception.PortalException;
import com.portal.rest.School;

public class SchoolDAO implements DAO {
	
	private CallableStatement cStmt;
	private static final int READ_LIST_CB = 1;
	private static final int READ_CB = 2;
	private static final int UPDATE_CB = 3;
	private static final int CREATE_CB = 4;
	private static final int DELETE_CB = 5;
	private ArrayList<School> list = new ArrayList<School>();
	private School inputSchool = new School();
	private Integer inputSchoolId;
	private String inputSchoolName;

	@Override
	public CallableStatement prepareCall(Connection conn, int callbackId) throws SQLException {
		switch(callbackId){
			case READ_LIST_CB:
				cStmt = conn.prepareCall("{call usp_school_list()}");
			break;
			case READ_CB:
				cStmt = conn.prepareCall("{call usp_school_profile(?,?)}");
				if(inputSchoolId != null){
					cStmt.setInt(1, inputSchoolId);
				}else{
					cStmt.setNull(1, Types.NULL);
				}
				
				if(inputSchoolName != null){
					cStmt.setString(2,inputSchoolName);
				}else{
					cStmt.setNull(2, Types.NULL);
				}
				break;
			case UPDATE_CB:
				cStmt = conn.prepareCall("{call usp_school_update(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");				
				cStmt.setInt(1, inputSchool.getId());
				cStmt.setString(2,inputSchool.getName());
				cStmt.setString(3, inputSchool.getPrincipal());
				cStmt.setString(4, inputSchool.getLandline());
				cStmt.setString(5, inputSchool.getMobile());
				cStmt.setString(6, inputSchool.getWebsite());
				cStmt.setString(7, inputSchool.getSkype());
				cStmt.setString(8, inputSchool.getEmail());
				cStmt.setString(9, inputSchool.getStreet());
				cStmt.setString(10, inputSchool.getCity());
				cStmt.setString(11, inputSchool.getZip());
				cStmt.setString(12, inputSchool.getMandal());
				cStmt.setString(13, inputSchool.getDistrict());
				cStmt.setString(14, inputSchool.getState());
				setInt(cStmt, 15, inputSchool.getIsgovt());
				setInt(cStmt, 16, inputSchool.getEducationMode());
				setInt(cStmt, 17, inputSchool.getInternet_facility());
				setInt(cStmt, 18, inputSchool.getSanitation_facility());
				setInt(cStmt, 19, inputSchool.getElectricity());
				setInt(cStmt, 20, inputSchool.getPowerbackup());
				setInt(cStmt, 21, inputSchool.getDrinkingwater_facility());
				setInt(cStmt, 22, inputSchool.getDistance_from_main_road());
				setInt(cStmt, 23, inputSchool.getBoard());
				setInt(cStmt, 24, inputSchool.getEnvironment());
				setInt(cStmt, 25, inputSchool.getRatio());
				setInt(cStmt, 26, inputSchool.getHealth_check_freq());
				cStmt.setString(27, inputSchool.getMisc());		
				break;
			case CREATE_CB:
				cStmt = conn.prepareCall("{call usp_school_insert(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");				
				cStmt.setString(1,inputSchool.getName());
				cStmt.setString(2, inputSchool.getPrincipal());
				cStmt.setString(3, inputSchool.getLandline());
				cStmt.setString(4, inputSchool.getMobile());
				cStmt.setString(5, inputSchool.getWebsite());
				cStmt.setString(6, inputSchool.getSkype());
				cStmt.setString(7, inputSchool.getEmail());
				cStmt.setString(8, inputSchool.getStreet());
				cStmt.setString(9, inputSchool.getCity());
				cStmt.setString(10, inputSchool.getZip());
				cStmt.setString(11, inputSchool.getMandal());
				cStmt.setString(12, inputSchool.getDistrict());
				cStmt.setString(13, inputSchool.getState());
				setInt(cStmt, 14, inputSchool.getIsgovt());
				setInt(cStmt, 15, inputSchool.getEducationMode());
				setInt(cStmt, 16, inputSchool.getInternet_facility());
				setInt(cStmt, 17, inputSchool.getSanitation_facility());
				setInt(cStmt, 18, inputSchool.getElectricity());
				setInt(cStmt, 19, inputSchool.getPowerbackup());
				setInt(cStmt, 20, inputSchool.getDrinkingwater_facility());
				setInt(cStmt, 21, inputSchool.getDistance_from_main_road());
				setInt(cStmt, 22, inputSchool.getBoard());
				setInt(cStmt, 23, inputSchool.getEnvironment());
				setInt(cStmt, 24, inputSchool.getRatio());
				setInt(cStmt, 25, inputSchool.getHealth_check_freq());
				cStmt.setString(26, inputSchool.getMisc());	
				break;
			case DELETE_CB:
				cStmt = conn.prepareCall("{call usp_school_delete(?)}");
				cStmt.setInt(1, inputSchoolId);
				break;
				
		}
		return cStmt;
	}

	@Override
	public void processResultSet(ResultSet rslt, int callbackId) throws SQLException {
		switch(callbackId){
		case READ_CB:
		case READ_LIST_CB:
			while(rslt.next()){
				School school = new School();
				school.setId(rslt.getInt(1));
				school.setName(rslt.getString(2));
				school.setPrincipal(rslt.getString(3));
				school.setLandline(rslt.getString(4));
				school.setMobile(rslt.getString(5));
				school.setWebsite(rslt.getString(6));
				school.setSkype(rslt.getString(7));
				school.setEmail(rslt.getString(8));
				school.setStreet(rslt.getString(9));
				school.setCity(rslt.getString(10));
				school.setZip(rslt.getString(11));
				school.setMandal(rslt.getString(12));
				school.setDistrict(rslt.getString(13));
				school.setState(rslt.getString(14));
				school.setIsgovt(rslt.getInt(15));
				school.setEducationMode(rslt.getInt(16));
				school.setInternet_facility(rslt.getInt(17));
				school.setSanitation_facility(rslt.getInt(18));
				school.setElectricity(rslt.getInt(19));
				school.setPowerbackup(rslt.getInt(20));
				school.setDrinkingwater_facility(rslt.getInt(21));
				school.setDistance_from_main_road(rslt.getInt(22));
				school.setBoard(rslt.getInt(23));
				school.setEnvironment(rslt.getInt(24));
				school.setRatio(rslt.getInt(25));
				school.setHealth_check_freq(rslt.getInt(26));
				school.setMisc(rslt.getString(27));
				
				list.add(school);
			}
		 break;
		}

	}
	
	public ArrayList<School> getSchoolList() throws PortalException{
		DBHelper helper = new DBHelper();
		helper.executeQuerySP(this, READ_LIST_CB);
		return list;
	}

	public School getSchool(Integer id, String name) throws PortalException{
		this.inputSchoolId = id;
		this.inputSchoolName = name;
		DBHelper helper = new DBHelper();
		helper.executeQuerySP(this, READ_CB);
		inputSchool = list.get(0);
		return inputSchool;
	}

	public void updateSchool(School school) throws PortalException {
		this.inputSchool = school;
		DBHelper helper = new DBHelper();
		helper.executeQuerySP(this, UPDATE_CB);
		
	}
	
	public void createSchool(School school) throws PortalException {
		this.inputSchool = school;
		DBHelper helper = new DBHelper();
		helper.executeQuerySP(this, CREATE_CB);
		
	}

	public void deleteSchool(Integer id, String name) throws PortalException{
		this.inputSchoolId = id;
		this.inputSchoolName = name;
		DBHelper helper = new DBHelper();
		helper.executeQuerySP(this, DELETE_CB);
		
	}
	
	  private void setInt(CallableStatement cStmt, int index, Integer value)
		      throws SQLException
		  {
		    if (value != null)
		      cStmt.setInt(index, value);
		    else
		      cStmt.setNull(index, Types.NULL);
		  }

}
