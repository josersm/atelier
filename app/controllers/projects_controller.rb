class ProjectsController < ApplicationController

  def index
    @projects = policy_scope(Project)
  end

  def show
    @project = Project.find(params[:id])
    @product = Product.new
    @brand = @project.brand
    authorize @project
  end

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
      redirect_to dashboard_path, notice: "Form was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end


  def update
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(
			:title,
			:delivery_mode,
			:description,
			:supplier_id	,
			:status
		)
  end
end
