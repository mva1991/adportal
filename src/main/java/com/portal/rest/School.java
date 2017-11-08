package com.portal.rest;


import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class School {
	private Integer id;
    private String  name;
    private String  principal;
    private String  landline;
    private String  mobile;
    private String  website;
    private String  skype;
    private String  email;
    private String  street;
    private String  city;
    private String  zip;
    private String  mandal;
    private String  district;
    private String  state;
    private Integer isgovt;
    private Integer educationMode;
    private Integer internet_facility;
    private Integer sanitation_facility;
    private Integer electricity;
    private Integer powerbackup;
    private Integer drinkingwater_facility;   
    private Integer distance_from_main_road;
    private Integer  board;
    private Integer environment;
    private Integer  ratio;
    private Integer  health_check_freq;
    private String  misc;
    private String location;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrincipal() {
		return principal;
	}
	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	public String getLandline() {
		return landline;
	}
	public void setLandline(String landline) {
		this.landline = landline;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getSkype() {
		return skype;
	}
	public void setSkype(String skype) {
		this.skype = skype;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getMandal() {
		return mandal;
	}
	public void setMandal(String mandal) {
		this.mandal = mandal;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getIsgovt() {
		return isgovt;
	}
	public void setIsgovt(Integer isgovt) {
		this.isgovt = isgovt;
	}
	public Integer getEducationMode() {
		return educationMode;
	}
	public void setEducationMode(Integer educationMode) {
		this.educationMode = educationMode;
	}
	public Integer getInternet_facility() {
		return internet_facility;
	}
	public void setInternet_facility(Integer internet_facility) {
		this.internet_facility = internet_facility;
	}
	public Integer getSanitation_facility() {
		return sanitation_facility;
	}
	public void setSanitation_facility(Integer sanitation_facility) {
		this.sanitation_facility = sanitation_facility;
	}
	public Integer getElectricity() {
		return electricity;
	}
	public void setElectricity(Integer electricity) {
		this.electricity = electricity;
	}
	public Integer getPowerbackup() {
		return powerbackup;
	}
	public void setPowerbackup(Integer powerbackup) {
		this.powerbackup = powerbackup;
	}
	public Integer getDrinkingwater_facility() {
		return drinkingwater_facility;
	}
	public void setDrinkingwater_facility(Integer drinkingwater_facility) {
		this.drinkingwater_facility = drinkingwater_facility;
	}
	public Integer getDistance_from_main_road() {
		return distance_from_main_road;
	}
	public void setDistance_from_main_road(Integer distance_from_main_road) {
		this.distance_from_main_road = distance_from_main_road;
	}
	public Integer getBoard() {
		return board;
	}
	public void setBoard(Integer board) {
		this.board = board;
	}
	public Integer getEnvironment() {
		return environment;
	}
	public void setEnvironment(Integer environment) {
		this.environment = environment;
	}
	public Integer getRatio() {
		return ratio;
	}
	public void setRatio(Integer ratio) {
		this.ratio = ratio;
	}
	public Integer getHealth_check_freq() {
		return health_check_freq;
	}
	public void setHealth_check_freq(Integer health_check_freq) {
		this.health_check_freq = health_check_freq;
	}
	public String getMisc() {
		return misc;
	}
	public void setMisc(String misc) {
		this.misc = misc;
	}
	public String getLocation() {
		StringBuilder sb = new StringBuilder();
		if(street != null && !street.isEmpty()){
			sb.append(street+",");
		}
		if(city != null && !city.isEmpty()){
			sb.append(city+",");
		}
		if(mandal != null && !mandal.isEmpty()){
			sb.append(mandal+",");
		}
		if(district != null && !district.isEmpty()){
			sb.append(district+",");
		}
		if(state != null && !state.isEmpty()){
			sb.append(state+",");
		}
		if(zip != null && !zip.isEmpty()){
			sb.append(zip);
		}
		location = sb.toString();
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
    
    
    
}