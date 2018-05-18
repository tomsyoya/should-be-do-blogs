class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :introduction
      t.text :image

      t.timestamps
    end
  end
end
