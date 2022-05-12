class VisualliesController < ApplicationController
  before_action :set_visually, only: %i[ edit update ]

  def index
  end

  def edit
  end

  def update
    if @visually.update(visually_params)
      redirect_to index_admin_day_drinkings_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visually
      @visually = Visually.find(params[:id])
    end

  def visually_params
    params.require(:visually).permit(:visually, :drinking_id)
  end

end
