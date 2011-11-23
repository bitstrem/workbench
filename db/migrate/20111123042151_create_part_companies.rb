class CreatePartCompanies < ActiveRecord::Migration
  def change
    create_table :part_companies do |t|
      t.string :name
      t.string :address
      t.boolean :archive

      t.timestamps
    end
  end
end
