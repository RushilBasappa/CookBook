class ReviewsController < ApplicationController
  before_action :set_recipe

  def create
    @review = Review.new(review_params)
    @review.chef_id=current_chef.id
    @review.recipe_id = @recipe.id
    if @review.save
      flash[:success] = "Review saved"
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating,:comment)
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
