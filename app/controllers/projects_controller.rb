class ProjectsController < ApplicationController
  def new
		# raise
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @brand = current_user.brand
    @project.brand = @brand
    authorize @project
    if @project.save
      redirect_to project_path(@project), notice: "Form was successfully created."
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :delivery_mode, :description)
  end
end
