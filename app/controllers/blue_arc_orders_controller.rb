class BlueArcOrdersController < ApplicationController
  def new
    @type = params[:commit] == "Payeezy" ? 'payeezy' : 'authorize'
    @credit = BlueArcOrder.new
    @amount = params[:price]
  end

  def create
    @credit = BlueArcOrder.new(params[:blue_arc_order])
    @amount = params[:price] ? params[:price] : @credit.amount
    @type = @credit.payment_type
    if @credit.save && @credit.purchase && @credit.success == true
      flash[:success] = "Success to make Order"
      redirect_to '/'
    else
      flash[:info] = "Failed to make Order"
      render :action => 'new'
    end
  end
end
