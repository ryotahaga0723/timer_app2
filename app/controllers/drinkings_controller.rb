class DrinkingsController < ApplicationController
  before_action :set_drinking, only: %i[ show edit update destroy ]
  before_action :require_admin, only: %i[ index_admin_day index_admin_user ]

  # GET /drinkings or /drinkings.json
  def index
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today    
    @drinkings = Drinking.left_outer_joins(:user).includes(:visuallies).where(users: {id: current_user.id}).where(driving_start_time: @month.all_month).order("driving_start_time")
  end

  def index_admin_day
    @day = params[:day] ? Date.parse(params[:day]) : Time.zone.today   
    @q = Drinking.where(driving_start_time: @day.all_day).ransack(params[:q])
    @drinkings = @q.result(distinct: true)
  end

  def index_admin_user
    @user = User.find(params[:id])
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today    
    @r = @user.drinkings.where(driving_start_time: @month.all_month).ransack(params[:q])
    @drinkings = @r.result(distinct: true)
  end

  # GET /drinkings/1 or /drinkings/1.json
  def show
  end

  # GET /drinkings/new
  def new
    @drinking = Drinking.new
    @drinking.alcohols.build
    @drinking.visuallies.build
  end

  # GET /drinkings/1/edit
  def edit
  end

  # POST /drinkings or /drinkings.json
  def create
    @user = current_user
    @drinking = current_user.drinkings.new(drinking_params)

    if @drinking.save
      @user.drinkings << @drinking
      redirect_to drinkings_path(current_user.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drinkings/1 or /drinkings/1.json
  def update
    if @drinking.update(drinking_params)
      flash[:notice] = '飲酒記録を更新しました' 
      redirect_to drinkings_path(current_user.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /drinkings/1 or /drinkings/1.json
  def destroy
    @drinking.destroy

    respond_to do |format|
      format.html { redirect_to drinkings_url, notice: "Drinking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def calculation
    @user = current_user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drinking
      @drinking = Drinking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def drinking_params
      params.require(:drinking).permit(:status, :driving_start_time, :drinking_end_time, :time, :user_id, alcohols_attributes: [:id, :kind, :frequency, :quantity, :number, :_destroy], visuallies_attributes: [:id, :visually])
    end

    def require_admin
      redirect_to root_path unless current_user.admin?
    end
end
