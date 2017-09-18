class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :nickname
      t.boolean :active
      t.integer :project_id

      t.timestamps
    end
  end
end
