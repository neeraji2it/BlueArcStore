class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end
  def index
    @contact = Contact.all
  end

    def create
    @contact = Contact.new(params[:contact])
    if @promo.save
      redirect_to homes_path
    else
      render :action => 'new'
    end
  end
end
