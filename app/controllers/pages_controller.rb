# frozen_string_literal: true

class PagesController < ApplicationController
  def main
    @recipes = Recipe.all
    @random_recipes = Recipe.order("RANDOM()").limit(3)
    @first_recipe = @recipes.first
    @last_recipe = @recipes.last
  end
end