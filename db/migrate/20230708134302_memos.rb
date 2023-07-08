class Memos < ActiveRecord::Migration[7.0]
  def change
    create_table :memos do |t|
      t.string :name
      t.text :text
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
