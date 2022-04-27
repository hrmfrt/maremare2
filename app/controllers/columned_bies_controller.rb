class ColumnedBiesController < ApplicationController
  before_action :set_columned_by, only: %i[ show edit update destroy ]

  # GET /columned_bies or /columned_bies.json
  def index
    @columned_bies = ColumnedBy.all
  end

  # GET /columned_bies/1 or /columned_bies/1.json
  def show
  end

  # GET /columned_bies/new
  def new
    @columned_by = ColumnedBy.new
  end

  # GET /columned_bies/1/edit
  def edit
  end

  # POST /columned_bies or /columned_bies.json
  def create
    @columned_by = ColumnedBy.new(columned_by_params)

    respond_to do |format|
      if @columned_by.save
        format.html { redirect_to columned_by_url(@columned_by), notice: "Columned by was successfully created." }
        format.json { render :show, status: :created, location: @columned_by }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @columned_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /columned_bies/1 or /columned_bies/1.json
  def update
    respond_to do |format|
      if @columned_by.update(columned_by_params)
        format.html { redirect_to columned_by_url(@columned_by), notice: "Columned by was successfully updated." }
        format.json { render :show, status: :ok, location: @columned_by }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @columned_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /columned_bies/1 or /columned_bies/1.json
  def destroy
    @columned_by.destroy

    respond_to do |format|
      format.html { redirect_to columned_bies_url, notice: "Columned by was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_columned_by
      @columned_by = ColumnedBy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def columned_by_params
      params.require(:columned_by).permit(:name)
    end
end
