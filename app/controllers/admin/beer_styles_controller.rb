class Admin::BeerStylesController < AdminController
  before_action :set_beer_style, only: [:show, :edit, :update, :destroy]

  # GET /beer_styles
  # GET /beer_styles.json
  def index
    @beer_styles = BeerStyle.order(:id).page params[:page]
  end

  # GET /beer_styles/1
  # GET /beer_styles/1.json
  def show
  end

  # GET /beer_styles/new
  def new
    @beer_style = BeerStyle.new
    #@beer_style.build_beer_style_category
  end

  # GET /beer_styles/1/edit
  def edit
  end

  # POST /beer_styles
  # POST /beer_styles.json
  def create
    @beer_style = BeerStyle.new(beer_style_params)

    respond_to do |format|
      if @beer_style.save
        format.html { redirect_to [:admin, @beer_style], notice: 'Beer style was successfully created.' }
        format.json { render action: 'show', status: :created, location: @beer_style }
      else
        format.html { render action: 'new' }
        format.json { render json: @beer_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_styles/1
  # PATCH/PUT /beer_styles/1.json
  def update
    respond_to do |format|
      if @beer_style.update(beer_style_params)
        format.html { redirect_to [:admin, @beer_style], notice: 'Beer style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @beer_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_styles/1
  # DELETE /beer_styles/1.json
  def destroy
    @beer_style.destroy
    respond_to do |format|
      format.html { redirect_to admin_beer_styles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_style
      @beer_style = BeerStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_style_params
      if BeerStyleCategory.new(params.require(:beer_style).dup.permit!['beer_style_category_attributes']).valid?
        params.require(:beer_style).permit(:name, :description, beer_style_category_attributes: [:name, :description])
      else
        params.require(:beer_style).permit(:name, :description, :beer_style_category_id)
      end
    end
end
