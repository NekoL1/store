class AddCategoryToProductsController < ApplicationController
  before_action :set_add_category_to_product, only: %i[ show edit update destroy ]

  # GET /add_category_to_products or /add_category_to_products.json
  def index
    @add_category_to_products = AddCategoryToProduct.all
  end

  # GET /add_category_to_products/1 or /add_category_to_products/1.json
  def show
  end

  # GET /add_category_to_products/new
  def new
    @add_category_to_product = AddCategoryToProduct.new
  end

  # GET /add_category_to_products/1/edit
  def edit
  end

  # POST /add_category_to_products or /add_category_to_products.json
  def create
    @add_category_to_product = AddCategoryToProduct.new(add_category_to_product_params)

    respond_to do |format|
      if @add_category_to_product.save
        format.html { redirect_to add_category_to_product_url(@add_category_to_product), notice: "Add category to product was successfully created." }
        format.json { render :show, status: :created, location: @add_category_to_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @add_category_to_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_category_to_products/1 or /add_category_to_products/1.json
  def update
    respond_to do |format|
      if @add_category_to_product.update(add_category_to_product_params)
        format.html { redirect_to add_category_to_product_url(@add_category_to_product), notice: "Add category to product was successfully updated." }
        format.json { render :show, status: :ok, location: @add_category_to_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @add_category_to_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_category_to_products/1 or /add_category_to_products/1.json
  def destroy
    @add_category_to_product.destroy!

    respond_to do |format|
      format.html { redirect_to add_category_to_products_url, notice: "Add category to product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_category_to_product
      @add_category_to_product = AddCategoryToProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_category_to_product_params
      params.require(:add_category_to_product).permit(:category_id)
    end
end
