class RemoveUserFromRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_reference :recipes, :user, foreign_key: true
  end
end
