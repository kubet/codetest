class CoursesController < ApplicationController
    before_action :doorkeeper_authorize!
    before_action :set_course, only: [:show, :update, :destroy]
  
      # GET /todos
      def index
        @courses = Course.all
        json_response(@courses)
      end
    
      # POST /todos
      def create
        @course = Course.create!(course_params)
        json_response(@course, :created)
      end
    
      # GET /todos/:id
      def show
        json_response(@course)
      end
    
      # PUT /todos/:id
      def update
        @course.update(course_params)
        head :no_content
      end
    
      # DELETE /todos/:id
      def destroy
        @course.destroy
        head :no_content
      end
    
      private

             
      def course_params
        # whitelist params
        params.require(:course).permit(:name, :category_id, :author, :state)
      end
    
      def set_course
        @course = Course.find(params[:id])
      end
  end
  