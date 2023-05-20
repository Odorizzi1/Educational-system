class ClassroomsController < ApplicationController
    def index
      classrooms = Classroom.all
      render json: classrooms
    end
  
    def show
      classroom = Classroom.find(params[:id])
      render json: classroom
    end
  
    def create
      classroom = Classroom.new(classroom_params)
  
      if classroom.save
        render json: classroom, status: :created
      else
        render json: classroom.errors, status: :unprocessable_entity
      end
    end
  
    def update
      classroom = Classroom.find(params[:id])
  
      if classroom.update(classroom_params)
        render json: classroom
      else
        render json: classroom.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      classroom = Classroom.find(params[:id])
      classroom.destroy
      head :no_content
    end
  
    private
  
    def classroom_params
      params.require(:classroom).permit(:room_number, :student_count, :period, :teacher_id)
    end
  end
  