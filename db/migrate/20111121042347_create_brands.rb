class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :brand
      t.string :address

      t.timestamps
    end
  end
end
