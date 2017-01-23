<past-appointment>
  <section class="content-header">
    <h1>
      Past Appointment
    </h1>
  </section>

  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-body">
              <div class="table-responsive">
                  <table id="past-appointment" class="table table-bordered table-hover">
                    <tbody>
                      <tr>
                        <th>Title</th>
                        <th>Nurse</th>
                        <th>Start Date</th>
                        <th>Payment</th>
                      </tr>
                    </tbody>
                  </table>
              </div>
          </div>
          <div class="overlay">
              <i class="fa fa-refresh fa-spin"></i>
          </div>
        </div>
      </div>
    </div>
  </section>

  <script>
    $(function() {
      $.ajax({
        url: "https://demo1381866.mockable.io/v1/appointments"
      }).then(function(data) {
        $('.overlay').hide()
        $.each(data, function() {

          $('#past-appointment tr:last').after(
            '<tr><td>'
            + this.title
            + '</td><td>'
            + formatName(this.nurse)
            + '</td><td>'
            + formatDateTime(this.start_datetime)
            + '</td><td>'
            + formatPaymentText(this.payment)
            + '</td></tr>'
          );
        });
      })
    })

    function formatPaymentText(payment) {
        if("completed" == payment.status) {
            return '<span class="label label-success">' + "Completed" + '</span>'
        } else {
            return '<span class="label label-warning">' + "Pending" + '</span>'
        }
    }

    function formatDateTime(dateTime) {
        return moment(dateTime).format('Do MMM YYYY, h:mm a')
    }

    function formatName(nurse) {
        return nurse.salutation + ' ' + nurse.name
    }
  </script>
</past-appointment>
