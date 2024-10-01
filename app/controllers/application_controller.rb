# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include ErrorHandling
  include Pagy::Backend
  before_action :set_first_recipe, :set_last_recipe

  private

  def set_first_recipe
    @first_recipe = Recipe.first
  end

  def set_last_recipe
    @last_recipe = Recipe.last
  end
end
