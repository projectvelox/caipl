<div class="modal fade" id="modal-create-account">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
    
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Create Account</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      
      <!-- Modal body -->
      <div class="modal-body">
       <form id="registerForm">

            <!-- Username -->
            <div class="form-group">
                <input type="text"
                       class="form-control"
                       name="username"
                       required="required"
                       placeholder="Enter your username">
            </div>

            <!-- Password -->
            <div class="form-group">
                <input type="password"
                       class="form-control"
                       name="password"
                       required="required"
                       placeholder="Enter your password">
            </div>

            <!-- Student Id -->
            <div class="form-group" id="visibility-studentid">
                <input type="text"
                       class="form-control"
                       name="studentid"
                       placeholder="Enter your student id">
            </div>

            <!-- First Name -->
            <div class="form-group">
                <input type="text"
                       class="form-control"
                       name="firstname"
                       required="required"
                       placeholder="Enter your firstname">
            </div>

            <!-- Middle Name -->
            <div class="form-group">
                <input type="text"
                       class="form-control"
                       name="middlename"
                       placeholder="Enter your middlename">
            </div>

            <!-- Last Name -->
            <div class="form-group">
                <input type="text"
                       class="form-control"
                       name="lastname"
                       required="required"
                       placeholder="Enter your lastname">
            </div>

            <div class="form-group">
              <select class="form-control typeofaccount" name="typeofaccount" required="required">
                <option selected disabled>Choose an option</option>
                <option value="1">Student</option>
                <option value="2">Admin</option>
              </select>
            </div>


            <button type="submit" class="btn btn-dark">Register</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </form>
      </div>      
    </div>
  </div>
</div>