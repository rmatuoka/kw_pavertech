class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :city, :state, :corp, :message
  
  validates_presence_of :name, :message=> " - preencha o campo!"
  validates_presence_of :email, :message=> " - preencha o campo!"
  validates_presence_of :phone, :message=> " - preencha o campo!"
  validates_presence_of :city, :message=> " - preencha o campo!"
  validates_presence_of :state, :message=> " - preencha o campo!"  
  validates_presence_of :corp, :message=> " - preencha o campo!"
  validates_presence_of :message, :message=> " - preencha o campo!" 
   
end
