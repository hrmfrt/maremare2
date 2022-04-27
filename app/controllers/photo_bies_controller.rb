class PhotoBiesController < ApplicationController
  before_action :set_photo_by, only: %i[ show edit update destroy ]

  # GET /photo_bies or /photo_bies.json
  def index
    @photo_bies = PhotoBy.all
  end

  # GET /photo_bies/1 or /photo_bies/1.json
  def show
  end

  # GET /photo_bies/new
  def new
    @photo_by = PhotoBy.new
  end

  # GET /photo_bies/1/edit
  def edit
  end

  # POST /photo_bies or /photo_bies.json
  def create
    @photo_by = PhotoBy.new(photo_by_params)

    respond_to do |format|
      if @photo_by.save
        format.html { redirect_to photo_by_url(@photo_by), notice: "Photo by was successfully created." }
        format.json { render :show, status: :created, location: @photo_by }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @photo_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_bies/1 or /photo_bies/1.json
  def update
    respond_to do |format|
      if @photo_by.update(photo_by_params)
        format.html { redirect_to photo_by_url(@photo_by), notice: "Photo by was successfully updated." }
        format.json { render :show, status: :ok, location: @photo_by }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @photo_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_bies/1 or /photo_bies/1.json
  def destroy
    @photo_by.destroy

    respond_to do |format|
      format.html { redirect_to photo_bies_url, notice: "Photo by was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_by
      @photo_by = PhotoBy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_by_params
      params.require(:photo_by).permit(:name)
    end
end
