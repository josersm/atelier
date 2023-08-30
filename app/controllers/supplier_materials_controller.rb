class SupplierMaterialsController < ApplicationController
  before_action :set_supplier_material, only: [:show, :edit, :update, :destroy]

  def index
    @supplier_materials = policy_scope(SupplierMaterial)
  end

  private

  def set_supplier_material
    @supplier_material = SupplierMaterial.find(params[:id])
    authorize @supplier_material
  end
end
