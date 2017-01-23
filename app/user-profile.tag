<user-profile>
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      User Profile
    </h1>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-5">

        <!-- Profile Image -->
        <div class="box box-primary">
          <div class="box-body box-profile">
            <img class="profile-user-img img-responsive img-circle" src={ profileImageUrl } alt="User profile picture">

            <h3 class="profile-username text-center">{ username }</h3>

            <p class="text-muted text-center">Member since { memberSince }</p>

            <ul class="list-group list-group-unbordered">
              <li class="list-group-item">
                <b>Email</b> <a class="pull-right">{ email }</a>
              </li>
              <li class="list-group-item">
                <b>Phone</b> <a class="pull-right">{ phone }</a>
              </li>
              <li class="list-group-item">
                <b>Country</b> <a class="pull-right">Singapore</a>
              </li>
              <li class="list-group-item">
                <b>Address</b> <a class="pull-right">Blk 533 #07-223 Ang Mo Kio Street 61</a>
              </li>
              <li class="list-group-item">
                <b>Payment</b> <a class="pull-right">Visa</a>
              </li>
            </ul>

            <a href="#" class="btn btn-primary btn-block"><b>Update</b></a>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
      <!-- /.col -->

      <div class="col-md-7">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Upcoming Appointment</h3>
          </div>
          <div class="box-body">
            <table class="table table-bordered">
              <tbody>
                <tr>
                  <th>Date</th>
                  <th>Patient</th>
                  <th>Nurse</th>
                </tr>
                <tr each={ opts.upcomings }>
                  <td>{ date }</td>
                  <td>{ patientName }</td>
                  <td>{ nurseName }</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>

      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</user-profile>
