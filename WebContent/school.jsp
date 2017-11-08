<%@ include file="/header.jsp" %>
      <script type="text/javascript" src="js/adportal/school.js"></script>

<main>
  <nav>
    <div class="nav-wrapper blue lighten-2">
      <div class="col s12">
        <a href="#!" class="breadcrumb">Home</a>
        <a href="#!" class="breadcrumb">Schools</a>
      </div>
    </div>
  </nav>
	
	<div class="row">
	<div class="col s12 m12 l12"> <br/></div>
	  <div class="col s12 m12 l12"> 
		 <table id="schoolGrid" class="ui celled table" cellspacing="0" width="100%">
           <thead>
              <tr>
              <th style="width: 30px"></th>
<!--               <th style="width: 30px"></th>
              <th style="max-width: 20px"></th> -->
               <th>Id</th>  
               <th>Name</th>
               <th>Principal</th> 
               <th>Website</th> 
               <th>Skype</th>
               <th>Office Phone</th> 
               <th>Mobile Phone</th>
               <th>Location</th>              
              </tr>
            </thead> 

            <tfoot>
              <tr>
              <th style="width: 30px"></th>
<!--               <th style="width: 30px"></th>
              <th style="max-width: 20px"></th> -->
               <th>Id</th>  
               <th>Name</th>
               <th>Principal</th> 
               <th>Website</th> 
               <th>Skype</th>
               <th>Office Phone</th> 
               <th>Mobile Phone</th>
               <th>Location</th> 
              </tr>
            </tfoot>
          </table> 
        </div>
      </div>
      
     
      
      
</main>
<%@ include file="/footer.jsp" %>