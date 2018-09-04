<?PHP if(empty(session_id()))session_start(); ?>

<div class="modal fade" id="modal-edit-account">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
    
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Edit <?php echo $_SESSION['account']['firstname'] ?>'s  Account</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      
      <!-- Modal body -->
      <div class="modal-body">
       <form id="editForm">

            <!-- Username -->
            <div class="form-group">
                <input type="hidden"
                       class="form-control"
                       name="username"
                       required="required">
            </div>

            <!-- Password -->
            <div class="form-group" style="margin-top: -20px;">
                <label>Password</label>
                <input type="password"
                       class="form-control"
                       name="password"
                       required="required">
            </div>

            <!-- First Name -->
            <div class="form-group">
                <label>First Name</label>
                <input type="text"
                       class="form-control"
                       name="firstname"
                       required="required">
            </div>

            <!-- Middle Name -->
            <div class="form-group">
                <label>Middle Name</label>
                <input type="text"
                       class="form-control"
                       name="middlename">
            </div>

            <!-- Last Name -->
            <div class="form-group" style="margin-bottom: 30px;">
                <label>Last Name</label>
                <input type="text"
                       class="form-control"
                       name="lastname">
            </div>
            
            <button type="submit" class="btn btn-dark">Edit</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </form>
      </div>      
    </div>
  </div>
</div>