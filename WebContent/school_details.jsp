<%@ include file="/header.jsp"%>
<script type="text/javascript" src="js/adportal/school_details.js"></script>
<main>
   <nav>
      <div class="nav-wrapper blue lighten-2">
         <div class="col s12">
            <a href="#!" class="breadcrumb">Home</a> <a href="school"
               class="breadcrumb">Schools</a> <a href="#!" class="breadcrumb">Details</a>
         </div>
      </div>
   </nav>
   <div class="row">
      <div class="col s12 m12 l12">
         <div class="card">
            <div class="card-tabs">
               <ul class="tabs tabs-fixed-width">
                  <li class="tab"><a href="#generalTab" class="active">General
                     Information</a>
                  </li>
                  <li class="tab"><a href="#additionalTab">Additional
                     Information</a>
                  </li>
                  <li class="tab"><a href="#visualizationTab">Visualization</a>
                  </li>
               </ul>
            </div>
            <div class="card-content">
               <div id="generalTab">
                  <h3 class="header2">School Details</h3>
                  <div class="row">
                     <form id="schoolForm1" class="col s12">
                        <div class="row">
                           <div class="input-field col s6">
                              <input  name="name" id="name" type="text"
                                 class="validate"> <label class="myLabel" for="name">Name</label>
                           </div>
                           <div class="input-field col s6">
                              <input name='principal' id="principal" type="text"
                                 class="validate"> <label class="myLabel" for="principal">Principal</label>
                           </div>
                        </div>
                        <div class="row">
                           <div class="input-field col s6">
                              <input  name='landline' id="landline" type="text"
                                 class="validate"> <label class="myLabel" for="landline">Landline</label>
                           </div>
                           <div class="input-field col s6">
                              <input  name='mobile' id="mobile" type="text"
                                 class="validate"> <label class="myLabel" for="mobile">Mobile</label>
                           </div>
                        </div>
                        <div class="row">
                           <div class="input-field col s6">
                              <input  name='website' id="website" type="text"
                                 class="validate"> <label class="myLabel" for="website">Website</label>
                           </div>
                           <div class="input-field col s6">
                              <input name='skype' id="skype" type="text"
                                 class="validate"> <label class="myLabel" for="skype">Skype</label>
                           </div>
                        </div>
                        <div class="row">
                           <div class="input-field col s6">
                              <input name='email' id="email" type="text"
                                 class="validate"> <label class="myLabel" for="email">Email</label>
                           </div>
                        </div>
                     </form>
                     <h3 class="header2">Location</h3>
                     <div class="row">
                        <form id="schoolForm2" class="col s12">
                           <div class="row">
                              <div class="input-field col s6">
                                 <input  id="street" name='street' type="text"
                                    class="validate"> <label class="myLabel" for="street">Street</label>
                              </div>
                              <div class="input-field col s6">
                                 <input  id="city" name='city' type="text"
                                    class="validate"> <label class="myLabel" for="city">City</label>
                              </div>
                           </div>
                           <div class="row">
                              <div class="input-field col s6">
                                 <input  id="mandal" name='mandal' type="text"
                                    class="validate"> <label class="myLabel" for="mandal">Mandal</label>
                              </div>
                              <div class="input-field col s6">
                                 <input  id="district" name='district' type="text"
                                    class="validate"> <label class="myLabel" for="district">District</label>
                              </div>
                           </div>
                           <div class="row">
                              <div class="input-field col s6">
                                 <input  id="state" name='state' type="text"
                                    class="validate"> <label class="myLabel" for="state">State</label>
                              </div>
                              <div class="input-field col s6">
                                 <input  id="zip" name='zip' type="text" class="validate">
                                 <label class="myLabel" for="zip">Zip Code</label>
                              </div>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
               <div id="additionalTab">
                  <h3 class="header2">Facilities</h3>
                  <br/>
                  <div class="row">
                     <form id="schoolForm3" class="col s12">
                        <div id='establishmentDiv' class="row">
                           <div class="col s1"><label class="myLabel" for="establishmentDesc">Establishment</label></div>
                           <div class="col s1">
                              <input class="est" type="checkbox" id="establishmentDesc1" name='isgovt' value='1' onChange="tweakCheckBox(this,'est')"/>
                              <label for="establishmentDesc1">Public</label>
                           </div>
                           <div class="col s1">
                              <input class="est" type="checkbox" id="establishmentDesc2" name='isgovt' value='2' onChange="tweakCheckBox(this,'est')"/>
                              <label for="establishmentDesc2">Private</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="boardDes">Board</label></div>
                           <div class="col s1">
                              <input class='board' type="checkbox" id="boardDes1" name='board' value='1' onChange="tweakCheckBox(this,'board')"/>
                              <label for="boardDes1">State</label>
                           </div>
                           <div class="col s1">
                              <input class='board' type="checkbox" id="boardDes2" name='board' value='2' onChange="tweakCheckBox(this,'board')"/>
                              <label for="boardDes2">Central</label> 
                           </div>
                           <div class="col s1">
                              <input class='board' type="checkbox" id="boardDes3" name='board' value='3' onChange="tweakCheckBox(this,'board')"/>
                              <label for="boardDes3">Others</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="educationModeDesc">Education Mode</label></div>
                           <div class="col s1">
                              <input class='edu' type="checkbox" id="educationModeDesc1" name='educationMode' value='1' onChange="tweakCheckBox(this,'edu')"/>
                              <label for="educationModeDesc1">Co-Education</label> 
                           </div>
                           <div class="col s1">
                              <input class='edu' type="checkbox" id="educationModeDesc2" name='educationMode' value='2' onChange="tweakCheckBox(this,'edu')"/>
                              <label for="educationModeDesc2">Boys</label>
                           </div>
                           <div class="col s1">
                              <input class='edu' type="checkbox" id="educationModeDesc3" name='educationMode' value='3' onChange="tweakCheckBox(this,'edu')"/>
                              <label for="educationModeDesc3">Girls</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="ratioDesc">Teacher-Student Ratio</label></div>
                           <div class="col s1">
                              <input class='tsr' type="checkbox" id="rDesc1" name='ratio' value='1' onChange="tweakCheckBox(this,'tsr')"/>
                              <label for="rDesc1">1:20</label> 
                           </div>
                           <div class="col s1">
                              <input class='tsr' type="checkbox" id="rDesc2" name='ratio' value='2' onChange="tweakCheckBox(this,'tsr')"/>
                              <label for="rDesc2">1:40</label>
                           </div>
                           <div class="col s1">
                              <input class='tsr' type="checkbox" id="rDesc3" name='ratio' value='3' onChange="tweakCheckBox(this,'tsr')"/>
                              <label for="rDesc3">1:60</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="drinkingWaterDesc">Drinking Water</label></div>
                           <div class="col s1">
                              <input class='wtr' type="checkbox" id="drinkingWaterDesc1" name='drinkingwater_facility' value='1' onChange="tweakCheckBox(this,'wtr')"/>
                              <label for="drinkingWaterDesc1">Yes</label>
                           </div>
                           <div class="col s1">
                              <input class='wtr' type="checkbox" id="drinkingWaterDesc2" name='drinkingwater_facility' value='2' onChange="tweakCheckBox(this,'wtr')" />
                              <label for="drinkingWaterDesc2">No</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="sanitationFacilityDesc">Sanitation</label></div>
                           <div class="col s1">
                              <input class='stn' type="checkbox" id="sanitationFacilityDesc1" name='sanitation_facility' value='1' onChange="tweakCheckBox(this,'stn')"/>
                              <label for="sanitationFacilityDesc1">Good</label> 
                           </div>
                           <div class="col s1">
                              <input class='stn' type="checkbox" id="sanitationFacilityDesc2" name='sanitation_facility' value='2' onChange="tweakCheckBox(this,'stn')"/>
                              <label for="sanitationFacilityDesc2">Average</label> 
                           </div>
                           <div class="col s1">
                              <input class='stn' type="checkbox" id="sanitationFacilityDesc3" name='sanitation_facility' value='3' onChange="tweakCheckBox(this,'stn')"/>
                              <label for="sanitationFacilityDesc3">Poor</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="electrictyDesc">Electricity</label></div>
                           <div class="col s1">
                              <input class='elc' type="checkbox" id="electrictyDesc1" name='electricity' value='1' onChange="tweakCheckBox(this,'elc')"/>
                              <label for="electrictyDesc1">Yes</label>
                           </div>
                           <div class="col s1">
                              <input class='elc' type="checkbox" id="electrictyDesc2" name='electricity' value='2' onChange="tweakCheckBox(this,'elc')"/>
                              <label for="electrictyDesc2">No</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="healthDesc">Health Check Frequency</label></div>
                           <div class="col s1">
                              <input class='hlt' type="checkbox" id="healthDesc1" name='health_check_freq' value='1'onChange="tweakCheckBox(this,'hlt')"/>
                              <label for="healthDesc1">Never</label> 
                           </div>
                           <div class="col s1">
                              <input class='hlt' type="checkbox" id="healthDesc2" name='health_check_freq' value='2' onChange="tweakCheckBox(this,'hlt')"/>
                              <label for="healthDesc2">Once/Year</label>
                           </div>
                           <div class="col s1">
                              <input class='hlt' type="checkbox" id="healthDesc3" name='health_check_freq' value='3' onChange="tweakCheckBox(this,'hlt')"/>
                              <label for="healthDesc3">Twice/Year</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="envDesc">Environment</label></div>
                           <div class="col s1">
                              <input class='env' type="checkbox" id="envDesc1" name='environment' value='1' onChange="tweakCheckBox(this,'env')"/>
                              <label for="envDesc1"> Rural</label>
                           </div>
                           <div class="col s1">
                              <input class='env' type="checkbox" id="envDesc2" name='environment' value='2' onChange="tweakCheckBox(this,'env')"/>
                              <label for="envDesc2">Periurban</label> 
                           </div>
                           <div class="col s1">
                              <input class='env' type="checkbox" id="envDesc3" name='environment' value='3' onChange="tweakCheckBox(this,'env')"/>
                              <label for="envDesc3">Urban</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="distanceDesc">Distance from the main road</label></div>
                           <div class="col s1">
                              <input class='dst' type="checkbox" id="distanceDesc1" name='distance_from_main_road' value='1' onChange="tweakCheckBox(this,'dst')"/>
                              <label for="distanceDesc1"> < 1 Km</label>
                           </div>
                           <div class="col s1">
                              <input class='dst' type="checkbox" id="distanceDesc2" name='distance_from_main_road' value='2' onChange="tweakCheckBox(this,'dst')"/>
                              <label for="distanceDesc2">1 Km - 2 Km</label> 
                           </div>
                           <div class="col s1">
                              <input class='dst' type="checkbox" id="distanceDesc3" name='distance_from_main_road' value='3' onChange="tweakCheckBox(this,'dst')"/>
                              <label for="distanceDesc3"> > 2 Km</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="internetFacilityDesc">Internet</label></div>
                           <div class="col s1">
                              <input class='intr' type="checkbox" id="internetFacilityDesc1" name='internet_facility' value='1' onChange="tweakCheckBox(this,'intr')"/>
                              <label for="internetFacilityDesc1">Yes</label>
                           </div>
                           <div class="col s1">
                              <input class='intr' type="checkbox" id="internetFacilityDesc2" name='internet_facility' value='2' onChange="tweakCheckBox(this,'intr')"/>
                              <label for="internetFacilityDesc2">No</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="col s1"><label class="myLabel" for="powerBackup">Power Backup</label></div>
                           <div class="col s1">
                              <input class='pwr' type="checkbox" id="powerBackup1" name='powerbackup' value='1' onChange="tweakCheckBox(this,'pwr')"/>
                              <label for="powerBackup1">Yes</label>
                           </div>
                           <div class="col s1">
                              <input class='pwr' type="checkbox" id="powerBackup2" name='powerbackup' value='2' onChange="tweakCheckBox(this,'pwr')"/>
                              <label for="powerBackup2">No</label> 
                           </div>
                        </div>
                        <div class="row">
                           <div class="input-field col s6">
                              <textarea id="miscInfo" name='misc' class="materialize-textarea"></textarea>
                              <label class="myLabel" for="miscInfo">Miscellaneous Information</label>
                           </div>
                        </div>
                     </form>
                  </div>
               </div>
               <div id="visualizationTab"></div>
            </div>
            <div class="card-action">
               <div class="center-align ">
                  <button class="blue  btn waves-effect waves-light"
                     type="submit" onClick="submitHandler()" name="submitButton">
                  Save <i class="material-icons right">send</i>
                  </button>
                  <button class="blue  btn waves-effect waves-light"
                     type="submit" onClick="cancelHandler()" name="cancelButton">
                  Cancel <i class="material-icons right">cancel</i>
                  </button>
               </div>
            </div>
         </div>
      </div>
   </div>
</main>
<%@ include file="/footer.jsp"%>