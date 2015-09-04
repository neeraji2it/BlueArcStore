class BlueArcOrdersController < ApplicationController
  def new
    @credit = BlueArcOrder.new
    @amount = params[:price]
  end

  def create
    @credit = BlueArcOrder.new(params[:blue_arc_order])
    @amount = params[:price] ? params[:price] : @credit.amount
    if @credit.save && @credit.purchase && @credit.success == true
      flash[:success] = "Success to make Order"
      redirect_to '/'
    else
      flash[:info] = "Failed to make Order"
      render :action => 'new'
    end
  end
end
