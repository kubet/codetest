class CategoriesController < ApplicationController
    before_action :doorkeeper_authorize!
    before_action :set_category, only: [:show, :update, :destroy]
  
      # GET /todos
      def index
        @categories = Category.all
        json_response(@categories)
      end
    
      # POST /todos
      def create
        @category = Category.create!(category_params)
        json_response(@category, :created)
      end
    
      # GET /todos/:id
      def show
        json_response(@category)
      end
    
      # PUT /todos/:id
      def update
        @category.update(category_params)
        head :no_content
      end
    
      # DELETE /todos/:id
      def destroy
        @category.destroy
        head :no_content
      end
    
      private
      
      def category_params
        # whitelist params
        params.require(:category).permit(:name, :state, :vertical_id)
      end
    
      def set_category
        @category = Category.find(params[:id])
      end
  end
  