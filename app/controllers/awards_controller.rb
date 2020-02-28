class AwardsController < OpenReadController
  before_action :set_award, only: [:show, :update, :destroy]

  # GET /awards
  def index
    @awards = current_user.awards.all
    render json: @awards
  end

  # GET /awards/1
  def show
    render json: @award
  end

  # POST /awards
  def create
    @award = current_user.awards.build(award_params)
    if @award.save
      render json: @award, status: :created
    else
      render json: @award.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /awards/1
  def update
    if @award.update(award_params)
      render json: @award
    else
      render json: @award.errors, status: :unprocessable_entity
    end
  end

  # DELETE /awards/1
  def destroy
    @award.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_award
      @award = current_user.awards.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def award_params
      params.require(:award).permit(:level, :name, :id)
    end
end
