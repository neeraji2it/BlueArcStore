class CreativesController < ApplicationController
  before_filter :authenticate_user!, :except => [:new,:create]

  def new
    @creative = Creative.new
  end

  def index

    @creatives = Creative.all
  end

  def create
    @creative = Creative.new(params[:creative])
    if @creative.save
      flash[:success] = 'OK!  Your Details are submited.'
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @creative = Creative.find(params[:id])
    @creative.destroy
    redirect_to creatives_path
  end

end
