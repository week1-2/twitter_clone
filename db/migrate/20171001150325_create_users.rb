class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, index: true
      t.string :user_name, index: true
      t.text :bio
      t.string :location
      t.string :avatar

      t.timestamps
    end
  end
end
