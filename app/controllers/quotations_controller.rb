class QuotationsController < ApplicationController
  layout "internal"
  
  def index
    redirect_to new_quotation_path
  end
  def new
    @quotation = Quotation.new
  end

  def create
    @quotation = Quotation.new(params[:quotation])
    if @quotation.save
      QuotationMailer.send_quotation_to_adm(@quotation).deliver
      redirect_to quotation_path(@quotation), :notice => "Successfully created quotation."
    else
      render :action => 'new'
    end
  end

  def show
    @quotation = Quotation.find(params[:id])
  end
end
