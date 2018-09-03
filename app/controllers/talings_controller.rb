class TalingsController < ApplicationController
  before_action :set_taling, only: [:show, :edit, :update, :destroy]

  # GET /talings
  # GET /talings.json
  def index
    @talings = Taling.all
  end

  # GET /talings/1
  # GET /talings/1.json
  def show
  end

  # GET /talings/new
  def new
    @taling = Taling.new
  end

  # GET /talings/1/edit
  def edit
  end

  # POST /talings
  # POST /talings.json
  def create
    @taling = Taling.new(taling_params)

    respond_to do |format|
      if @taling.save
        format.html { redirect_to @taling, notice: 'Taling was successfully created.' }
        format.json { render :show, status: :created, location: @taling }
      else
        format.html { render :new }
        format.json { render json: @taling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /talings/1
  # PATCH/PUT /talings/1.json
  def update
    respond_to do |format|
      if @taling.update(taling_params)
        format.html { redirect_to @taling, notice: 'Taling was successfully updated.' }
        format.json { render :show, status: :ok, location: @taling }
      else
        format.html { render :edit }
        format.json { render json: @taling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talings/1
  # DELETE /talings/1.json
  def destroy
    @taling.destroy
    respond_to do |format|
      format.html { redirect_to talings_url, notice: 'Taling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taling
      @taling = Taling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taling_params
      params.require(:taling).permit(:title, :content)
    end
end
