class Quotation < ActiveRecord::Base
  attr_accessible :corp, :branch, :cnpj, :address, :hood, :city, :state, :phone, :email, :message
end
