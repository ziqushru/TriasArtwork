class ChristeningsController < ApplicationController
  before_action :set_christening, only: [:show, :edit, :update, :destroy]

  # GET /christenings
  # GET /christenings.json
  def index
    @christenings = Christening.all
  end

  # GET /christenings/1
  # GET /christenings/1.json
  def show
  end

  # GET /christenings/new
  def new
    @christening = Christening.new
  end

  # GET /christenings/1/edit
  def edit
  end

  # POST /christenings
  # POST /christenings.json
  def create
    @christening = Christening.new(christening_params)

    respond_to do |format|
      if @christening.save
        format.html { redirect_to @christening, notice: 'Christening was successfully created.' }
        format.json { render :show, status: :created, location: @christening }
      else
        format.html { render :new }
        format.json { render json: @christening.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /christenings/1
  # PATCH/PUT /christenings/1.json
  def update
    respond_to do |format|
      if @christening.update(christening_params)
        format.html { redirect_to @christening, notice: 'Christening was successfully updated.' }
        format.json { render :show, status: :ok, location: @christening }
      else
        format.html { render :edit }
        format.json { render json: @christening.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /christenings/1
  # DELETE /christenings/1.json
  def destroy
    @christening.destroy
    respond_to do |format|
      format.html { redirect_to christenings_url, notice: 'Christening was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_christening
      @christening = Christening.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def christening_params
      params.require(:christening).permit(:video_id, :description)
    end
end
