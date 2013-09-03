class Contact < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :city, :state, :corp, :message
end
