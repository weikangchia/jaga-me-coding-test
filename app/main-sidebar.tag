<main-sidebar>
    <aside class="main-sidebar">

      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
          <div class="pull-left image">
            <img src={ profileImageUrl } class="img-circle" alt="User Image">
          </div>
          <div class="pull-left info">
            <p>{ username }</p>
            <!-- Status -->
            <a href="#"><i class="fa fa-globe"></i> Singapore</a>
          </div>
        </div>

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
          <li class="header">NAVIGATION</li>
          <!-- Optionally, you can add icons to the links -->
          <li class={ active: bookActive }><a href="#"><i class="fa fa-link"></i> <span>Book Appointment</span></a></li>
          <li class={ active: histActive }><a href="#past"><i class="fa fa-link"></i> <span>Past Appointment</span></a></li>
        </ul>
        <!-- /.sidebar-menu -->
      </section>
      <!-- /.sidebar -->
    </aside>
</main-sidebar>
