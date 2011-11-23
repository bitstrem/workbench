class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :part_number
      t.decimal :cost
      t.integer :part_company_id

      t.timestamps
    end
  end
end
