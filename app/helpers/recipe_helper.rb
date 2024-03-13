# frozen_string_literal: true

module RecipeHelper
  def short_description(description, length)
    truncated_text = description.body.to_plain_text.truncate(length)
    truncated_text.gsub(/\[[^\]]+\]/, '')
  end
end
