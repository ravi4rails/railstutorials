class CreateDefinations < ActiveRecord::Migration
  def change
    create_table :definations do |t|
      t.string :keyword
      t.text :description
      t.string :know_more

      t.timestamps null: false
    end
  end
end
