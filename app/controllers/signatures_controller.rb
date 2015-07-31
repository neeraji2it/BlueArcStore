class SignaturesController < ApplicationController
  def new
     @payment = BluearcPayment.find(params[:bluearc_payment_id])
    @signature = PaymentSignature.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @signature = PaymentSignature.new(params[:payment_signature])
  
    if @signature.save
      @signature.bluearc_payment.update_attributes({is_signed: true, token: generated_token, ip_address: request.remote_ip})
      # send email with the link to sign the payment
      PaymentMailer.payment_pdf(@signature.bluearc_payment).deliver
      redirect_to root_path
    else
      redirect_to :back
    end
  end
end





 