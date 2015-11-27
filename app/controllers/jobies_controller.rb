class JobiesController < ApplicationController
  before_action :set_joby, only: [:show, :edit, :update, :destroy]

  # GET /jobies
  # GET /jobies.json
  def index
    @jobies = Joby.all
  end

  # GET /jobies/1
  # GET /jobies/1.json
  def show
  end

  # GET /jobies/new
  def new
    @joby = Joby.new
  end

  # GET /jobies/1/edit
  def edit
  end

  # POST /jobies
  # POST /jobies.json
  def create
    @joby = Joby.new(joby_params)

    respond_to do |format|
      if @joby.save
        format.html { redirect_to @joby, notice: 'Joby was successfully created.' }
        format.json { render :show, status: :created, location: @joby }
      else
        format.html { render :new }
        format.json { render json: @joby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobies/1
  # PATCH/PUT /jobies/1.json
  def update
    respond_to do |format|
      if @joby.update(joby_params)
        format.html { redirect_to @joby, notice: 'Joby was successfully updated.' }
        format.json { render :show, status: :ok, location: @joby }
      else
        format.html { render :edit }
        format.json { render json: @joby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobies/1
  # DELETE /jobies/1.json
  def destroy
    @joby.destroy
    respond_to do |format|
      format.html { redirect_to jobies_url, notice: 'Joby was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joby
      @joby = Joby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joby_params
      params.require(:joby).permit(:occupation, :name, :lastname, :phone)
    end
end
