<payment-history>
    <section class="content-header">
      <h1>Invoice</h1>
    </section>

    <section class="invoice">
      <div class="row">
        <div class="col-xs-12">
          <h2 class="page-header"></h2>
          <small class="pull-right" id="date-issued">12222222</small>
        </div>
      </div>

      <div class="row invoice-info">
          <div class="col-sm-6 invoice-col">
              From
              <address>
                  <strong>Jaga-Me Coding Test</strong>
                  <br>
                  759 Folsom Ave, Suite 600
                  <br>
                  San Francisco, CA94107
                  <br>
                  Phone: (804) 123-5432
                  <br>
                  Email: info@jagamecodingtest.com
              </address>
          </div>
          <div class="col-sm-6 invoice-col">
              To
              <address>
                  <strong>Mr. { username }</strong>
                  <br>
                  Blk 533 #07-223 Ang Mo Kio Street 61
                  <br>
                  Singapore, 550533
                  <br>
                  Phone: 9123 4567
                  <br>
                  Email: { email }
              </address>
          </div>
      </div>

      <div class="row">
          <div class="col-xs-12 table-responsive">
              <table class="table table-stripped" id="test">
                  <thead>
                      <tr>
                          <th>Qty</th>
                          <th>Product</th>
                          <th>Description</th>
                      </tr>
                  </thead>
                  <tbody>

                  </tbody>
              </table>
          </div>
      </div>

      <div class="row">
          <div class="col-xs-12 col-md-6 pull-right">
              <p class="lead" id="amount-title"></p>
              <div class="table-responsive">
                  <table class="table">
                      <tbody>
                          <tr>
                              <th style="width:50%">Subtotal:</th>
                              <td id="amount-subtotal"></td>
                          </tr>
                          <tr>
                              <th style="width:50%">Discount:</th>
                              <td id="amount-discount"></td>
                          </tr>
                          <tr>
                              <th style="width:50%">Total:</th>
                              <td id="amount-total"></td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
    </section>


    <script>
        this.on('mount', function() {
            invoice = JSON.parse(localStorage.getItem('invoice'))
            $('.page-header').text(invoice.title)
            $('#date-issued').text(moment(invoice.payment.date_issued).format("L"))

            $.each(invoice.procedures, function() {
                $('#test tr:last').after(
                  '<tr><td>'
                  + 1
                  + '</td><td>'
                  + this.procedure_id
                  + '</td><td>'
                  + this.name
                  + '</td></tr>'
                )
            })

            $.each(invoice.consumables, function() {
                $('#test tr:last').after(
                  '<tr><td>'
                  + this.quantity
                  + '</td><td>'
                  + this.consumable_id
                  + '</td><td>'
                  + this.name
                  + '</td></tr>'
                )
            })

            if (!invoice.payment.date_completed) {
                $('#amount-title').text("Amount (Unpaid)")
            } else {
                $('#amount-title').text('Amount (Paid on '
                    + moment(invoice.payment.date_completed).format('llll') + ')')
            }


            var totalBeforeDiscount = invoice.payment.total_before_discount
            var discount = invoice.payment.discount
            var total = totalBeforeDiscount - discount
            $('#amount-subtotal').text('$' + totalBeforeDiscount.toFixed(2))
            $('#amount-discount').text('$' + discount.toFixed(2))
            $('#amount-total').text('$' + total.toFixed(2))
        })
    </script>
</payment-history>
