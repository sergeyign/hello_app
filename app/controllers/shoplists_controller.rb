class ShoplistsController < ApplicationController
  before_action :set_shoplist, only: [:show, :edit, :update, :destroy]

  # GET /shoplists
  # GET /shoplists.json
  def index
    @shoplists = Shoplist.all
  end

  # GET /shoplists/1
  # GET /shoplists/1.json
  def show
  end

  # GET /shoplists/new
  def new
    @shoplist = Shoplist.new
  end

  # GET /shoplists/1/edit
  def edit
  end

  # POST /shoplists
  # POST /shoplists.json
  def create
    @shoplist = Shoplist.new(shoplist_params)

    respond_to do |format|
      if @shoplist.save
        format.html { redirect_to @shoplist, notice: 'Shoplist was successfully created.' }
        format.json { render :show, status: :created, location: @shoplist }
      else
        format.html { render :new }
        format.json { render json: @shoplist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoplists/1
  # PATCH/PUT /shoplists/1.json
  def update
    respond_to do |format|
      if @shoplist.update(shoplist_params)
        format.html { redirect_to @shoplist, notice: 'Shoplist was successfully updated.' }
        format.json { render :show, status: :ok, location: @shoplist }
      else
        format.html { render :edit }
        format.json { render json: @shoplist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoplists/1
  # DELETE /shoplists/1.json
  def destroy
    @shoplist.destroy
    respond_to do |format|
      format.html { redirect_to shoplists_url, notice: 'Shoplist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoplist
      @shoplist = Shoplist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shoplist_params
      params.require(:shoplist).permit(:content, :price)
    end
end
