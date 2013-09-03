class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :city
      t.string :state
      t.string :corp
      t.text :message
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
