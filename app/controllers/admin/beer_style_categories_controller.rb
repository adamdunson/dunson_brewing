class Admin::BeerStyleCategoriesController < ApplicationController
  before_action :set_beer_style_category, only: [:show, :edit, :update, :destroy]

  # GET /beer_styles_categories
  # GET /beer_styles_categories.json
  def index
    @beer_style_categories = BeerStyleCategory.order(:id).page params[:page]
  end

  # GET /beer_styles_categories/1
  # GET /beer_styles_categories/1.json
  def show
  end

  # GET /beer_styles_categories/new
  def new
    @beer_style_category = BeerStyleCategory.new
  end

  # GET /beer_styles_categories/1/edit
  def edit
  end

  # POST /beer_styles_categories
  # POST /beer_styles_categories.json
  def create
    @beer_style_category = BeerStyleCategory.new(beer_style_category_params)

    respond_to do |format|
      if @beer_style_category.save
        format.html { redirect_to [:admin, @beer_style_category], notice: 'Beer style was successfully created.' }
        format.json { render action: 'show', status: :created, location: @beer_style_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @beer_style_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_styles_categories/1
  # PATCH/PUT /beer_styles_categories/1.json
  def update
    respond_to do |format|
      if @beer_style_category.update(beer_style_category_params)
        format.html { redirect_to [:admin, @beer_style_category], notice: 'Beer style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @beer_style_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_styles_categories/1
  # DELETE /beer_styles_categories/1.json
  def destroy
    @beer_style_category.destroy
    respond_to do |format|
      format.html { redirect_to admin_beer_styles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_style_category
      @beer_style_category = BeerStyleCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_style_category_params
      params.require(:beer_style_category).permit(:name, :description)
    end
end
