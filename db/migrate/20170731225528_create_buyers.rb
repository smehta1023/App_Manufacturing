class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
        t.references :user
        t.string :first_name, null: false
        t.string :last_name, null: false
        t.string :company_name, null: false
        t.string :linkedin
        t.string :email, :limit => 35, null: false
        t.string :account_type
        t.string :account_status
        t.string :address
        t.integer :mobile_phone
        t.integer :personal_phone
        t.integer :business_phone

        t.timestamps null: false

    end
  end
end


