# frozen_string_literal: true

# class CreateComments (example of top-level documentation comment)
class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :customer
      t.text :body
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
