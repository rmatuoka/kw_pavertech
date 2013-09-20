class Quotation < ActiveRecord::Base
  attr_accessible :corp, :branch, :cnpj, :address, :hood, :city, :state, :phone, :email, :message
  
  validates_presence_of :corp, :message=> " - preencha o campo!"
  validates_presence_of :branch, :message=> " - preencha o campo!"
  validates_presence_of :cnpj, :message=> " - preencha o campo!"
  validates_presence_of :address, :message=> " - preencha o campo!"
  validates_presence_of :hood, :message=> " - preencha o campo!"  
  validates_presence_of :city, :message=> " - preencha o campo!"
  validates_presence_of :state, :message=> " - preencha o campo!"
  validates_presence_of :phone, :message=> " - preencha o campo!"
  validates_presence_of :email, :message=> " - preencha o campo!"
  validates_presence_of :message, :message=> " - preencha o campo!" 
  
end
