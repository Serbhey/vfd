class BuketsController < ApplicationController
  before_action :set_buket, only: [:show, :edit, :update, :destroy]

  # GET /bukets
  # GET /bukets.json
  def index
    @bukets = Buket.all
  end

  # GET /bukets/1
  # GET /bukets/1.json
  def show
  end

  # GET /bukets/new
  def new
    @buket = Buket.new
  end

  # GET /bukets/1/edit
  def edit
  end

  # POST /bukets
  # POST /bukets.json
  def create
    @buket = Buket.new(buket_params)

    respond_to do |format|
      if @buket.save
        format.html { redirect_to @buket, notice: 'Buket was successfully created.' }
        format.json { render :show, status: :created, location: @buket }
      else
        format.html { render :new }
        format.json { render json: @buket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bukets/1
  # PATCH/PUT /bukets/1.json
  def update
    respond_to do |format|
      if @buket.update(buket_params)
        format.html { redirect_to @buket, notice: 'Buket was successfully updated.' }
        format.json { render :show, status: :ok, location: @buket }
      else
        format.html { render :edit }
        format.json { render json: @buket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bukets/1
  # DELETE /bukets/1.json
  def destroy
    @buket.destroy
    respond_to do |format|
      format.html { redirect_to bukets_url, notice: 'Buket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buket
      @buket = Buket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buket_params
      params.require(:buket).permit(:title, :description, :price)
    end
end
