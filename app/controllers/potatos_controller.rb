class PotatosController < ApplicationController
  before_action :set_potato, only: [:show, :update, :destroy]

  # GET /potatos
  def index
    @potatos = Potato.all

    render json: @potatos
  end

  # GET /potatos/1
  def show
    render json: @potato
  end

  # POST /potatos
  def create
    @potato = Potato.new(potato_params)

    if @potato.save
      render json: @potato, status: :created, location: @potato
    else
      render json: @potato.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /potatos/1
  def update
    if @potato.update(potato_params)
      render json: @potato
    else
      render json: @potato.errors, status: :unprocessable_entity
    end
  end

  # DELETE /potatos/1
  def destroy
    @potato.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potato
      @potato = Potato.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def potato_params
      params.require(:potato).permit(:butter, :brand)
    end
end
