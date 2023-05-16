class CollegesController < ApplicationController
  def index
    colleges = College.all
    render json: colleges
  end

  def create
    college = College.new(college_params)

    if college.save
      render json: college, status: :created
    else
      render json: college.errors, status: :unprocessable_entity
    end
  end

  private

  def college_params
    params.require(:college).permit(:name, :city, :active)
  end
end