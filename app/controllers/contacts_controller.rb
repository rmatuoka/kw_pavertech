class ContactsController < ApplicationController
  layout "internal"
  def index
    redirect_to new_contact_path
  end
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      ContactMailer.send_contact_to_adm(@contact).deliver
      redirect_to contact_path(@contact), :notice => "Successfully created contact."
    else
      render :action => 'new'
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end
end
