# frozen_string_literal: true

class RecipesController < ApplicationController
  include RecipeHelper
  
  before_action :authenticate_user!

  before_action :set_recipe!, only: %i[edit update]
  before_action :fetch_categories
  before_action :fetch_recipes
  before_action :fetch_tags

  def index
    @recipes = if params[:category_id].present?
                current_user.recipes.where(category_id: params[:category_id])
               else
                 current_user.recipes
               end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = current_user.recipes.new
  end

  def edit
    @selected = @recipe.tag_ids
    @selected_for_tomselect = @selected.collect { |x| { id: Tag.find(x).id, title: Tag.find(x).title } }
  end

  def create
    @recipe = current_user.recipes.new recipe_params

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def update
    if @recipe.update recipe_params
      flash[:success] = 'Recipe updated!'
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :portions, :cooking_duration, :image, :category_id,
                                   tag_ids: [])
  end

  def set_recipe!
    @recipe = current_user.recipes.find(params[:id])
  end

  def fetch_recipes
    @recipes = Recipe.all
  end

  def fetch_categories
    @categories = Category.all
  end

  def fetch_tags
    @tags = Tag.all
  end
end
