class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :username
      t.string  :email
      t.text    :skills
      t.integer :score

      t.timestamps null: false
    end
  end
end
