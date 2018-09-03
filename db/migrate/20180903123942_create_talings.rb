class CreateTalings < ActiveRecord::Migration
  def change
    create_table :talings do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
