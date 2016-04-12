class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.integer :hours
      t.string :name
      t.timestamps null: false
    end
  end
end
