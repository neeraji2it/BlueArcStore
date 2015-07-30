class PaymentsController < ApplicationController


 def new
    @payment = Payment.new
    render :layout => false
  end

  def create
    @payment = Payment.new(params[:payment])
    @payment.token = generated_token
    if @payment.save
      # send email with the link to sign the payment
      #PaymentMailer.payment_confirmation(@payment).deliver
      redirect_to payment_url(@payment, signature_token: @payment.token)
      #redirect_to "/payments/index.php?amount=#{@payment.amount}"
    else
     render :new
   end
 end

 def index
   @payments = params[:search] ? Payment.search(params[:search]) : Payment.all
   render :layout => false
 end



 def edit
 end

 def update
  if @payment.update_attributes(params[:payment])
    redirect_to payment_url(@payment,signature_token: @payment.token)
  else
    render :edit
  end
end

def show
 @signature = Sign.new(payment_id: payment.id)
end

def payment_pdf
  render pdf: "#{@payment.product_name}"
end




end
