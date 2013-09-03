class CreateQuotations < ActiveRecord::Migration
  def self.up
    create_table :quotations do |t|
      t.string :corp
      t.string :branch
      t.string :cnpj
      t.string :address
      t.string :hood
      t.string :city
      t.string :state
      t.string :phone
      t.string :email
      t.text :message
      t.timestamps
    end
  end

  def self.down
    drop_table :quotations
  end
end
