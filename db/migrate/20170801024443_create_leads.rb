class CreateLead < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.references :buyers
      t.references :suppliers

      t.timestamps
    end
  end
end
