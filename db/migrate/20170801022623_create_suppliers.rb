class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.references :user
      t.string :company_name, null: false
      t.string :email, :limit => 35, null: false
      t.string :account_type
      t.string :account_status
      t.string :address
      t.integer :business_phone
      t.string :preferred_shipping_method
      t.string :core_business
      t.integer :verified_score
      t.string :tags
      t.boolean :claimed?

      t.timestamps
    end
  end
end
