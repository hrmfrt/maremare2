class CategorySecondsController < ApplicationController
  before_action :set_category_second, only: %i[ show edit update destroy ]

  # GET /category_seconds or /category_seconds.json
  def index
    @category_seconds = CategorySecond.all
  end

  # GET /category_seconds/1 or /category_seconds/1.json
  def show
  end

  # GET /category_seconds/new
  def new
    @category_second = CategorySecond.new
    @id = params[:id]
  end

  # GET /category_seconds/1/edit
  def edit
  end

  # POST /category_seconds or /category_seconds.json
  def create
    @category_second = CategorySecond.new(category_second_params)

    respond_to do |format|
      if @category_second.save
        format.html { redirect_to category_second_url(@category_second), notice: "Category second was successfully created." }
        format.json { render :show, status: :created, location: @category_second }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category_second.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_seconds/1 or /category_seconds/1.json
  def update
    respond_to do |format|
      if @category_second.update(category_second_params)
        format.html { redirect_to category_second_url(@category_second), notice: "Category second was successfully updated." }
        format.json { render :show, status: :ok, location: @category_second }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category_second.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_seconds/1 or /category_seconds/1.json
  def destroy
    @category_second.destroy

    respond_to do |format|
      format.html { redirect_to category_seconds_url, notice: "Category second was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_second
      @category_second = CategorySecond.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_second_params
      params.require(:category_second).permit(:name, :picture, :order, :category_id)
    end
end
