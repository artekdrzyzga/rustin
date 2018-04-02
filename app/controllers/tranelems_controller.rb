class TranelemsController < ApplicationController
  before_action :set_tranelem, only: [:show, :edit, :update, :destroy]

  # GET /tranelems
  # GET /tranelems.json
  def index
    @tranelems = Tranelem.all
  end

  # GET /tranelems/1
  # GET /tranelems/1.json
  def show
  end

  # GET /tranelems/new
  def new
    @tranelem = Tranelem.new
  end

  # GET /tranelems/1/edit
  def edit
  end

  # POST /tranelems
  # POST /tranelems.json
  def create
    @tranelem = Tranelem.new(tranelem_params)

    respond_to do |format|
      if @tranelem.save
        format.html { redirect_to @tranelem, notice: 'Tranelem was successfully created.' }
        format.json { render :show, status: :created, location: @tranelem }
      else
        format.html { render :new }
        format.json { render json: @tranelem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tranelems/1
  # PATCH/PUT /tranelems/1.json
  def update
    respond_to do |format|
      if @tranelem.update(tranelem_params)
        format.html { redirect_to @tranelem, notice: 'Tranelem was successfully updated.' }
        format.json { render :show, status: :ok, location: @tranelem }
      else
        format.html { render :edit }
        format.json { render json: @tranelem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tranelems/1
  # DELETE /tranelems/1.json
  def destroy
    @tranelem.destroy
    respond_to do |format|
      format.html { redirect_to tranelems_url, notice: 'Tranelem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tranelem
      @tranelem = Tranelem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tranelem_params
      params.require(:tranelem).permit(:tranhead_id, :ad_id)
    end
end
