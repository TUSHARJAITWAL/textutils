class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
   @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact
      redirect_to contacts_path
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone)
  end
end
