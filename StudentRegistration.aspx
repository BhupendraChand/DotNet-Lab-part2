<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="StudentRegistrationWebApplication.StudentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
     
    <form id="form1" runat="server">
       
<div class="container mt-5">
<div class="row">
 <div class="col-md-5 mx-auto">
          <div class="card b-light">
            <div class="card-header bg-success text-light text-center">
              <b>Student Registration</b>
            </div>
              <br />
            <div class="card-body">
                  <div class="form-group">

           <asp:label ID="lblName" runat="server" Text="Name: "></asp:label>
            <input type="text" id="uname" runat="server" class="form-control"/>
                      
                      </div>
            

<div class="form-group">
            <asp:label ID="lblEmail" runat="server" Text="Email: "></asp:label>
            <input type="email" id="email" runat="server" class="form-control" />
    </div>
                
    <div class="form-group">
            <asp:label ID="lblDOB" runat="server" Text="DOB: "></asp:label>
            <input type="date" id="dob" runat="server" class="form-control" />
        </div>

        <div class="form-group">
            <asp:label ID="lblPw" runat="server" Text="Password: "></asp:label>
            <input type="password" id="pw" runat="server" class="form-control" />
            </div>
                
            <div class="form-group">
            <asp:label ID="lblRpw" runat="server" Text="Re-type Password: "></asp:label>
            <input type="password" id="rpw" runat="server" class="form-control" />
                </div>
                
                <div class="form-group">
            <asp:label ID="lblGender" runat="server" Text="Gender: "></asp:label>
            <input type="radio" id="male" name="gender" value="male" runat="server" class="form-check-input" />    
            <asp:Label runat="server" AssociatedControlID="male" Text="Male" />
            <input type="radio" id="female" name="gender" value="female" runat="server" class="form-check-input" />
                            <asp:Label runat="server" AssociatedControlID="female" Text="Female"  />
                    </div>
          
      <div class="form-group">
            <asp:label ID="lblHobbies" runat="server" Text="Hobbies: "></asp:label>
            <input type="checkbox" id="reading" value="Reading" runat="server" class="form-check-input" />
            <asp:Label runat="server" AssociatedControlID="reading" Text="Reading" />

            <input type="checkbox" id="swimming" value="Swimming" runat="server" class="form-check-input" />
            <asp:Label runat="server" AssociatedControlID="swimming" Text="Swimming" />

            <input type="checkbox" id="playing" value="Playing" runat="server" class="form-check-input" />
            <asp:Label runat="server" AssociatedControlID="playing" Text="Playing"/>
          </div>
                  

                 <div class="form-group">
     <asp:label ID="lblAddress" runat="server" Text="Address: "></asp:label>
     <input type="text" id="address" runat="server" class="form-control" />
     </div>
                
                <div class="form-group mb-3">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-outline-success mt-3" />
                    </div>
           
        </div>

          </div>
        </div>
      </div>
    
    </div>

                 
    </form>
        
</body>
</html>
