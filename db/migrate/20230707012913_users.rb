class Users < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :age
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
