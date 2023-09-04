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
    @brand = Brand.find(params[:brand_id])
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
<<<<<<< HEAD
=======
      # redirect_to new_project_product(@project), notice: "Form was successfully created."
>>>>>>> d7db14c963934001dfc142d126cc37cfc72740e2
    else
      render :new, status: :unprocessable_entity
    end
  end


<<<<<<< HEAD
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
=======
  def total_projects_manufactured
    @total_projects_manufactured = current_user.project.count
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
>>>>>>> d7db14c963934001dfc142d126cc37cfc72740e2
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
