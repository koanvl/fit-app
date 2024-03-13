# frozen_string_literal: true

class Tag < ApplicationRecord
  has_many :recipe_tags, dependent: :destroy
  has_many :recipe, through: :recipe_tags
end
