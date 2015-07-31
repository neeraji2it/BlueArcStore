class PaymentMailer < ActionMailer::Base
   default from: "support@bluearchstore.com"
  def payment_confirmation(bluearc_payment)
    @payment = bluearc_payment
    mail(to: [bluearc_payment.email, 'support@bluearchstore.com'], subject: 'Please confirm payment and sign it')
  end

  def payment_pdf(bluearc_payment)
    @payment = bluearc_payment
    mail(to: bluearc_payment.email, subject: 'Thankyou, Your Payment was confirmed and signed')
  end

end
