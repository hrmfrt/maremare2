class PhotoSetsController < ApplicationController
  before_action :set_photo_set, only: %i[ show edit update destroy ]

  # GET /photo_sets or /photo_sets.json
  def index
    @photo_sets = PhotoSet.all
  end

  # GET /photo_sets/1 or /photo_sets/1.json
  def show
    @photo_sets = PhotoSet.all
  end

  # GET /photo_sets/new
  def new
    @photo_set = PhotoSet.new
    @photo = Photo.new
  end

  # GET /photo_sets/1/edit
  def edit
  end

  # POST /photo_sets or /photo_sets.json
  def create
    @photo_set = PhotoSet.new(photo_set_params)
    @photo_set.save

    @photo_set.image_sets.each do |photo_set|
      @photo = Photo.new(photo_params)
      @photo["photo_set_id"] = @photo_set["id"]
      @photo["photo_num"] = photo_set["id"]
      @photo.save!

    end

    respond_to do |format|
      if @photo_set.save
        format.html { redirect_to photo_set_url(@photo_set), notice: "Photo set was successfully created." }
        format.json { render :show, status: :created, location: @photo_set }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @photo_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_sets/1 or /photo_sets/1.json
  def update
    respond_to do |format|
      if @photo_set.update(photo_set_params)
        format.html { redirect_to photo_set_url(@photo_set), notice: "Photo set was successfully updated." }
        format.json { render :show, status: :ok, location: @photo_set }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @photo_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_sets/1 or /photo_sets/1.json
  def destroy
    @photo_set.destroy

    respond_to do |format|
      format.html { redirect_to photo_sets_url, notice: "Photo set was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_set
      # @photo_set = PhotoSet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_set_params
      params.require(:photo_set).permit(:name, image_sets: [])
    end

    def photo_params
      params.require(:photo_set).permit(:caption, :creature_id, :photo_by_id, :aquarium_id, :photo_set_id, :photo_num)
    end
end
