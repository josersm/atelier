class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @brand = Brand.find(params[:brand_id])
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @brand = current_user.brand
    @project.brand = @brand
    authorize @project
    if @project.save
      redirect_to dashboard_path, notice: "Form was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end


  def update
    @project = Project.find(params[:id])
  end

  def show
    @project = Project.find(params[:id])
    @brand = @project.brand
    @products = @project.products
    @product = Product.new
    authorize @project
  end

  def index
    @projects = policy_scope(Project)
    @brand = Brand.find(params[:brand_id])
  end

  private

  def project_params
    params.require(:project).permit(:title, :delivery_mode, :description, :status)
  end
end
