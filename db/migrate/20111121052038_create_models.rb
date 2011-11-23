class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :model_num
      t.integer :type_id
      t.integer :brand_id
      t.boolean :archive

      t.timestamps
    end
  end
end
