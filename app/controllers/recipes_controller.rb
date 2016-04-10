class RecipesController < ApplicationController
  before_action :require_permission, :except => [:index, :show]
  before_action :load_recipe, only: [:show, :edit, :update]
  before_action :edit_recipe, only: [:edit, :update]

  def index
    @recipes = Recipe.published_recipes()
    if params[:search].present?
      @recipes = @recipes.search(params[:search])
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.chef_id = current_chef.id

    if @recipe.save
      flash[:success] = "Recipe created"
      redirect_to recipes_path
    else
      render 'new'
    end
  end

  def show
    @review = Review.where(recipe_id: @recipe.id).order("created_at DESC")
    @review_new = Review.new
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      flash[:success] = "Recipe Updated"
      redirect_to recipe_path(@recipe)
    end
  end

  def destroy
    Recipe.find(params[:id]).destroy
    flash[:success] = "Recipe deleted"
    redirect_to recipes_path
  end

  def published
    @recipe = Recipe.where(id: params[:id]).first
    if @recipe.update("published"=>"true")
      flash[:success] = "Recipe Published"
    end
    redirect_to recipe_path
  end

  private

  def recipe_params
    if params[:commit] == "Publish Recipe"
      @recipe.published = true
    end
    params.require(:recipe).permit(:name, :summary,:ingredients, :procedure, :picture)
  end

  def load_recipe
    @recipe = Recipe.find(params[:id])
  end

  def edit_recipe
    if !(current_chef == @recipe.chef)
      redirect_to recipe_path(@recipe)
    end
  end
end
