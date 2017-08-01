class AddBuyerColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :buyer?, :boolean
  end
end
