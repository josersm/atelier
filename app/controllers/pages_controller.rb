class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard, :inbox]
  def home
    @suppliers = Supplier.all

    @countries = Supplier.distinct.pluck(:country)
    @min_value = Supplier.minimum(:minimum_quantity)
    @max_value = Supplier.maximum(:minimum_quantity)

    @suppliers = policy_scope(Supplier)

    if params[:country].present?
      @suppliers = @suppliers.where("country ILIKE ?", "%#{params[:country]}%")
    end

    if params[:price_rating].present?
      @suppliers = @suppliers.where(price_rating: params[:price_rating])
    end

    if params[:sustainability_rating].present?
      @suppliers = @suppliers.where(sustainability_rating: params[:sustainability_rating])
    end

    if params[:minimum_quantity].present? && params[:max_quantity].present?
      @suppliers = @suppliers.where("minimum_quantity BETWEEN ? AND ?", params[:minimum_quantity], params[:max_quantity])
    end
  end

  def dashboard
		@user = current_user
    # @supplier = current_user.supplier
    # @brand = current_user.brand
    # @projects = @brand.projects
    # @favorites = @brand.favorites
		# raise
		@brand = Brand.where(user: current_user)
	 	@projects = Project.where(brand: @brand)
		@supplier = Supplier.where(user: current_user)
		@favorites = Favorite.where(brand_id: @brand)
		@supplier_projects = Project.where(supplier_id: @supplier)
		chatrooms_dashboards(@projects)
  end

  def inbox
    @chatrooms = current_user.chatrooms
  end

	def chatrooms_dashboards(projects)
		suppliers = []
		@chatrooms = []
		@no_chatrooms = []
		projects.each do |project|
			supplier = Supplier.find(project.supplier_id)
			unless suppliers.include?(supplier)
				suppliers << supplier
			end
		end

		suppliers.each do |supplier|
			if Chatroom.find_by(supplier_id: supplier.id)
				@chatrooms << Chatroom.find_by(supplier_id: supplier.id)
			else
				@no_chatrooms << supplier
			end
		end
		
	end
end
