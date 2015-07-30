class BlueArcOrdersController < ApplicationController
  def new
    @credit = BlueArcOrder.new
    @amount = params[:price]
  end
  
  def create
    @credit = BlueArcOrder.new(params[:blue_arc_order])
    @amount = params[:price] ? params[:price] : @credit.amount
    if @credit.purchase && @credit.success == true
      redirect_to '/'
    else
      render :action => 'new'
    end
  end
end
