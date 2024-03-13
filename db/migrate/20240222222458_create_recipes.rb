# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :portions
      t.integer :cooking_duration

      t.timestamps
    end
  end
end
