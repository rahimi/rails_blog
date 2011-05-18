class CreateEndusers < ActiveRecord::Migration
  def self.up
    create_table :endusers do |t|
      t.string :firstname
      t.string :lastname
      t.string :platenumber
      t.string :email
      t.string :address
      t.string :telephone

      t.timestamps
    end
  end

  def self.down
    drop_table :endusers
  end
end
