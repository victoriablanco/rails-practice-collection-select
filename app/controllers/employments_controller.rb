class EmploymentsController < ApplicationController

  def index
    @employments = Employment.all
  end

  def new
    @employment = Employment.new
  end

  def create
    @employment = Employment.new(employment_params)
    if @employment.save
      redirect_to Employment
    else
      render :new
    end
  end

  def edit
    @employment = Employment.find(params[:id])
  end

  def update
    @employment = Employment.find(params[:id])
    if @employment.update(employment_params)
      redirect_to Employment
    else
      render :edit
    end
  end

  private

  def employment_params
    params.require(:employment).permit(
      :person_id,
      :organization_id,
      :job_title_id,
      :location_id
    )
  end

end
