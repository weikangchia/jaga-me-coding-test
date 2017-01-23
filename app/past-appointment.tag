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
                        <th>View</th>
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

  <div id="myModal" class="modal fade" role="dialog">
      <div class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title"></h4>
              </div>
              <div class="modal-body">
                  <h6 class="text-primary">Description</h6>
                  <p class="modal-description"></p>
                  <h6 class="text-primary">Time</h6>
                  <p class="modal-time"></p>
                  <h6 class="text-primary">Address 1</h6>
                  <p class="modal-address1"></p>
                  <h6 class="text-primary">Address 2</h6>
                  <p class="modal-address2"></p>
                  <h6 class="text-primary">Postal Code</h6>
                  <p class="modal-postal-code"></p>
                  <h6 class="text-primary">Country (State)</h6>
                  <p class="modal-country-state"></p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
          </div>
      </div>
  </div>

  <script>
    var appointmentList

    $(function() {
      $.ajax({
        url: "https://demo1381866.mockable.io/v1/appointments"
      }).then(function(data) {
        $('.overlay').hide()
        appointmentList = data
        $.each(data, function() {
          $('#past-appointment tr:last').after(
            '<tr><td>'
            + '<button onclick="showModal(' + this.id + ')" type="button" class="btn btn-info btn-xs"><i class="fa fa-eye" aria-hidden="true"></i></button>'
            + '</td><td>'
            + this.title
            + '</td><td>'
            + formatName(this.nurse)
            + '</td><td>'
            + formatDateTime(this.start_datetime)
            + '</td><td>'
            + formatPaymentText(this.payment, this.id)
            + '</td></tr>'
          )
        })
      })

      showModal(id) {
          var appointmentDetail = appointmentList[id - 1]
          $('h4.modal-title').text(appointmentDetail.title)
          $('p.modal-description').text(appointmentDetail.description)
          $('p.modal-time').text(formatDateTime(appointmentDetail.start_datetime)
                                + " - "
                                + formatDateTime(appointmentDetail.end_datetime))
          $('p.modal-address1').text(appointmentDetail.address_1)
          $('p.modal-address2').text(appointmentDetail.address_2)
          $('p.modal-postal-code').text(appointmentDetail.postal)
          $('p.modal-country-state').text(toTitleCase(appointmentDetail.country)
                                + " ("
                                + toTitleCase(appointmentDetail.state)
                                + ")")

          $('#myModal').modal('show')
      }

      viewReceipt(id) {
          localStorage.setItem("invoice", JSON.stringify(appointmentList[id - 1]))
          window.location.href = "#payment"
      }
    })

    function formatPaymentText(payment, id) {
        if("completed" == payment.status) {
            return '<button onclick="viewReceipt(' + id + ')" class="btn btn-success btn-xs">' + "Completed" + '</button>'
        } else {
            return '<button onclick="viewReceipt(' + id + ')" class="btn btn-warning btn-xs">' + "Pending" + '</button>'
        }
    }

    function formatDateTime(dateTime) {
        return moment(dateTime).format('Do MMM YYYY, h:mm a')
    }

    function formatName(nurse) {
        return nurse.salutation + ' ' + nurse.name
    }

    function toTitleCase(str) {
        return str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
    }
  </script>
</past-appointment>
