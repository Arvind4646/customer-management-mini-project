<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('edit')">
  <div class='container'>
    <div class='card col-md-10 mx-auto'>
     <div class='card-body'>
      <form action='edit-msg.jsp' method="post">
       <div class='row form-group'>
         <div class='col-md-10'>
          <label for='cid' class='la'>Enter customer id</label><span> *</span>
          <input type='text' id='cid' name='cid' class='form-control' required> 
         </div>
       </div>
        <div class='row form-group'>
         <div class='col-md-10'>
          <button class='btn btn-primary'>Edit Record</button>
         </div>
       </div>
      </form>
     </div>
    </div>
  </div>
 </body>
</html>