class PagesController < ApplicationController
  def home
    @suppliers = Supplier.all
  end
end
