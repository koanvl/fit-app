class SearchController < ApplicationController
  include Pagy::Backend

  def show    
    @categories = Category
                    .left_joins(:recipes) # Используем left_joins, чтобы учитывать категории без рецептов
                    .group(:id) # Группируем по id категории
                    .select('categories.*, COUNT(recipes.id) AS recipes_count') # Выбираем все данные из категорий и считаем количество рецептов
                    .order('recipes_count DESC') # Сортируем по количеству рецептов в порядке убывания

    @scope = Recipe.all
    
    if params[:title].present?
      @scope = @scope.where('title LIKE ?', "%#{params[:title]}%")
    end
    
    if params[:categories].present?
      @scope = @scope.where(category_id: params[:categories])
    end

    @pagy, @recipes = pagy_countless(@scope, items: 2)

    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
end