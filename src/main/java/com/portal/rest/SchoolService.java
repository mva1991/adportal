package com.portal.rest;


import java.util.ArrayList;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.portal.dao.SchoolDAO;
import com.portal.exception.PortalException;
import com.portal.utils.PaginatedList;

@Path("/school")
public class SchoolService {
	
	 @Path("/list")
	  @GET
	  @Consumes({ MediaType.TEXT_PLAIN })
	  @Produces({MediaType.APPLICATION_JSON})
	 public PaginatedList<School> getSchoolsList(@QueryParam("draw") Integer draw,
			 @QueryParam("sort") String sort,
			 @QueryParam("order") String order){
		 PaginatedList<School> paginatedSchoolList = new PaginatedList<>();
		 try {
			SchoolDAO dao = new SchoolDAO();
			ArrayList<School> list  = dao.getSchoolList();
			 
			paginatedSchoolList.setData(list);
			paginatedSchoolList.setDraw(draw);
			paginatedSchoolList.setRecordsFiltered(list.size());
			paginatedSchoolList.setRecordsTotal(list.size());
		} catch (PortalException e) {
			e.printStackTrace();
		}
		 return paginatedSchoolList;
	 }
	 
	 @Path("/profile")
	 @GET
	 @Consumes({ MediaType.TEXT_PLAIN })
	 @Produces({MediaType.APPLICATION_JSON})
	 public School getSchoolProfile(@QueryParam("id") Integer id,@QueryParam("name") String name){
		 School school = new School();
		 try{
			 SchoolDAO dao = new SchoolDAO();
			 school = dao.getSchool(id,name);
			 
		 }catch(PortalException e){
			 e.printStackTrace();
		 }
		 return school;
		 
	 }
	 
	 @Path("/update")
	 @POST
	 @Produces({MediaType.APPLICATION_JSON})
	 @Consumes({MediaType.APPLICATION_JSON})
	 public void updateSchool(School school){
		 try{
			 SchoolDAO dao = new SchoolDAO();
			 dao.updateSchool(school);
		 }catch(PortalException e){
			 e.printStackTrace();
		 }
	 }
	 
	 @Path("/create")
	 @POST
	 @Produces({MediaType.APPLICATION_JSON})
	 @Consumes({MediaType.APPLICATION_JSON})
	 public void createSchool(School school){
		 try{
			 SchoolDAO dao = new SchoolDAO();
			 dao.createSchool(school);
		 }catch(PortalException e){
			 e.printStackTrace();
		 }
	 }	
	 
	 @Path("/delete")
	 @POST
	 @Produces({MediaType.APPLICATION_JSON})
	 @Consumes({ MediaType.TEXT_PLAIN })
	 public void createSchool(@QueryParam("id") Integer id,@QueryParam("name") String name){
		 try{
			 SchoolDAO dao = new SchoolDAO();
			 dao.deleteSchool(id,name);
		 }catch(PortalException e){
			 e.printStackTrace();
		 }
	 }

}
