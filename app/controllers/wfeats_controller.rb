class WfeatsController < ApplicationController
  before_action :set_wfeat, only: [:show, :edit, :update, :destroy]

  # GET /wfeats
  # GET /wfeats.json
  def index
    @wfeats = Wfeat.all
  end

  # GET /wfeats/1
  # GET /wfeats/1.json
  def show
  end

  # GET /wfeats/new
  def new
    @wfeat = Wfeat.new
  end

  # GET /wfeats/1/edit
  def edit
  end

  # POST /wfeats
  # POST /wfeats.json
  def create
    @wfeat = Wfeat.new(wfeat_params)

    respond_to do |format|
      if @wfeat.save
        format.html { redirect_to @wfeat, notice: 'Wfeat was successfully created.' }
        format.json { render :show, status: :created, location: @wfeat }
      else
        format.html { render :new }
        format.json { render json: @wfeat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wfeats/1
  # PATCH/PUT /wfeats/1.json
  def update
    respond_to do |format|
      if @wfeat.update(wfeat_params)
        format.html { redirect_to @wfeat, notice: 'Wfeat was successfully updated.' }
        format.json { render :show, status: :ok, location: @wfeat }
      else
        format.html { render :edit }
        format.json { render json: @wfeat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wfeats/1
  # DELETE /wfeats/1.json
  def destroy
    @wfeat.destroy
    respond_to do |format|
      format.html { redirect_to wfeats_url, notice: 'Wfeat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wfeat
      @wfeat = Wfeat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wfeat_params
      params.require(:wfeat).permit(:name)
    end
end
