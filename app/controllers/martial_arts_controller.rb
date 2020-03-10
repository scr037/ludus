class MartialArtsController < ApplicationController
  before_action :set_martial_art, only: [:show, :edit, :update, :destroy]

  # GET /martial_arts
  # GET /martial_arts.json
  def index
    @martial_arts = MartialArt.all
  end

  # GET /martial_arts/1
  # GET /martial_arts/1.json
  def show
  end

  # GET /martial_arts/new
  def new
    @martial_art = MartialArt.new
  end

  # GET /martial_arts/1/edit
  def edit
  end

  # POST /martial_arts
  # POST /martial_arts.json
  def create
    @martial_art = MartialArt.new(martial_art_params)

    respond_to do |format|
      if @martial_art.save
        format.html { redirect_to @martial_art, notice: 'Martial art was successfully created.' }
        format.json { render :show, status: :created, location: @martial_art }
      else
        format.html { render :new }
        format.json { render json: @martial_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /martial_arts/1
  # PATCH/PUT /martial_arts/1.json
  def update
    respond_to do |format|
      if @martial_art.update(martial_art_params)
        format.html { redirect_to @martial_art, notice: 'Martial art was successfully updated.' }
        format.json { render :show, status: :ok, location: @martial_art }
      else
        format.html { render :edit }
        format.json { render json: @martial_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /martial_arts/1
  # DELETE /martial_arts/1.json
  def destroy
    @martial_art.destroy
    respond_to do |format|
      format.html { redirect_to martial_arts_url, notice: 'Martial art was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_martial_art
      @martial_art = MartialArt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def martial_art_params
      params.require(:martial_art).permit(:name)
    end
end
