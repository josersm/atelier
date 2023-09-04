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
    @project.status = 'pending'
    authorize @project
		# raise
    if @project.save
      redirect_to dashboard_path, notice: "Form was successfully created."
      # redirect_to new_project_product(@project), notice: "Form was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end


  def total_projects_manufactured
    @total_projects_manufactured = current_user.brand.projects.count
    authorize @total_projects_manufactured, :total_projects_manufactured?
  end

  # def update
  #   @project = Project.find(params[:id])
  # end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    authorize @project
    redirect_to dashboard_path
  end

  private

  def project_params
    params.require(:project).permit(
			:title,
			:delivery_mode,
			:description,
			:supplier_id,
			:delivery_date,
			:status
		)
  end
end
