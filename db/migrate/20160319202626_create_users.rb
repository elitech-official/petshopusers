class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.integer :sex

      t.timestamps null: false
    end
  end
end
