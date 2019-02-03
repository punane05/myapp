class TelefonidsController < ApplicationController
  before_action :set_telefonid, only: [:show, :edit, :update, :destroy]

  # GET /telefonids
  # GET /telefonids.json
  def index
    @telefonids = Telefonid.all
  end

  # GET /telefonids/1
  # GET /telefonids/1.json
  def show
  end

  # GET /telefonids/new
  def new
    @telefonid = Telefonid.new
  end

  # GET /telefonids/1/edit
  def edit
  end

  # POST /telefonids
  # POST /telefonids.json
  def create
    @telefonid = Telefonid.new(telefonid_params)

    respond_to do |format|
      if @telefonid.save
        format.html { redirect_to @telefonid, notice: 'Telefonid was successfully created.' }
        format.json { render :show, status: :created, location: @telefonid }
      else
        format.html { render :new }
        format.json { render json: @telefonid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telefonids/1
  # PATCH/PUT /telefonids/1.json
  def update
    respond_to do |format|
      if @telefonid.update(telefonid_params)
        format.html { redirect_to @telefonid, notice: 'Telefonid was successfully updated.' }
        format.json { render :show, status: :ok, location: @telefonid }
      else
        format.html { render :edit }
        format.json { render json: @telefonid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telefonids/1
  # DELETE /telefonids/1.json
  def destroy
    @telefonid.destroy
    respond_to do |format|
      format.html { redirect_to telefonids_url, notice: 'Telefonid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telefonid
      @telefonid = Telefonid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telefonid_params
      params.require(:telefonid).permit(:Nimi, :kirjeldus, :Sisemalu, :Muutmalu, :Protsessor, :Protsessori_kiirus)
    end
end
