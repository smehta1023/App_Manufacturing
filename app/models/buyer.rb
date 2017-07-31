class Buyer < ActiveRecord::Base
  def change
    create_table :buyers do |t|
      t.references :user
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :linkedin
      t.string :email, :limit => 35
      t.string :account_type
      t.string :account_status
      t.string :address
      t.integer :mobile_phone
      t.integer :personal_phone
      t.integer :business_phone

      t.timestamps
    end
  end
end
