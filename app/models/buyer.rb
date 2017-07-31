class Buyer < ActiveRecord::Base
  def change
    create_table :buyers do |t|
      t.references :user
      t.string :first_name
      t.string :last_name
      t.string :email, :limit => 35
      t.string :account_type
      t.string :account_status
      t.string :address
      t.integer :phone
      t.references :user

      t.timestamps
    end
  end
end
