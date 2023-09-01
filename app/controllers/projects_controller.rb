class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @supplier = Supplier.find(params[:supplier_id])
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @brand = current_user.brand
    @project.brand = @brand
    authorize @project
    if @project.save
      redirect_to dashboard_path(@project), notice: "Form was successfully created."
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:title, :delivery_mode, :description)
  end
end
