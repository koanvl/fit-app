# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :category
  has_many :recipe_tags, dependent: :destroy
  has_many :tags, through: :recipe_tags

  has_rich_text :description

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300], format: 'webp'
  end

  validates :title, presence: true, length: { minimum: 2 }
  validates :portions, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :cooking_duration, presence: true, numericality: { greater_than_or_equal_to: 1 }
end
