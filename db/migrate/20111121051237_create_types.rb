class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :size
      t.string :description
      t.boolean :archive

      t.timestamps
    end
  end
end
