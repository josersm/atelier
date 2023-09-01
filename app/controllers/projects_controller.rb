class ProjectsController < ApplicationController
  def new
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
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @project = Project.find(params[:id])
    @product = Product.new
    @brand = @project.brand
    authorize @project
  end

  def index
    @projects = policy_scope(Project)
  end

  private

  def project_params
    params.require(:project).permit(:title, :delivery_mode, :description, :status)
  end
end
