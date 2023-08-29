class ProjectsController < ApplicationController
def new
@project = Project.new
end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: "Form was successfully created."
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(
      :full_name, :company_name, :role, :bic_number, :contact_number,
      :country, :contact_email, :address, :overall_specification,
      :number_of_items, :dropdown
    )
  end
end
