module Api
  class RecipesController < ApplicationController

    def index
      recipes = Recipe.all
  
      render json: {
        recipes: recipes
      }, status: :ok
    end

    def show
      recipe = Recipe.find(params[:id])
      user = recipe.user
      # comments = recipe.comments
      # comment = Comment.new
      
      render json: {
        recipe: recipe
      }, status: :ok
    end

    # def new
    #   @recipe = Recipe.new
    #   @ingredient = @recipe.ingredients.build
    #   @howto = @recipe.howtos.build
    # end

    # def create
    #   @recipe = current_user.recipes.new(post_params)
    #   # @recipe.image.attach(params[:recipe][:image])
    #   if @recipe.save
    #     redirect_to :recipe
    #   else
    #     render :new
    #   end
    # end

    # def edit

    # end


  end
end
