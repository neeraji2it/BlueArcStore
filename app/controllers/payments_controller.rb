class PaymentsController < ApplicationController
  before_filter :payment, only: [:payment_pdf,:edit,:destroy,:update, :show,   :thankyou]
before_filter :require_http_for_admin, only: [:index]
  def new
    @payment = BluearcPayment.new
   # render :layout => false
 end

 def create
  @payment = BluearcPayment.new(params[:bluearc_payment])
  @payment.token = generated_token
  if @payment.save
      # send email with the link to sign the payment
      #PaymentMailer.payment_confirmation(@payment).deliver
      redirect_to payment_url(@payment, signature_token: @payment.token)
      #redirect_to "/payments/index.php?amount=#{@bluearc_payment.amount}"
    else
     render :new
   end
 end

 def index
   @payments = params[:search] ? BluearcPayment.search(params[:search]) : BluearcPayment.all
  # @payments = BluearcPayment.all
   render :layout => false
 end


 def edit
 end

 def update
  if @payment.update_attributes(params[:bluearc_payment])
    redirect_to payment_url(@payment,signature_token: @payment.token)
  else
    render :edit
  end
end

def show
 #@signature = PaymentSignature.new
 @signature = PaymentSignature.new(bluearc_payment_id: payment.id)
end

def destroy
@payment.destroy
redirect_to :back
end


def thankyou
end

def payment_pdf
  render pdf: "#{@payment.product_name}"
end


private

def payment
 @payment = BluearcPayment.find(params[:id])
end


end
