class UsersController < ApplicationController
    before_action :correct_user, only: [:show, :edit, :update, :destroy]
    skip_before_action :login_required, only: [:new, :create]
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        log_in(@user)
        redirect_to user_path(@user.id)
      else
        render :new
      end
    end
  
    def show
    end
  
    def edit
    end
  
    def update
      if @user.update(user_params)
        log_in(@user)
        flash[:notice] = 'アカウントを更新しました' 
        redirect_to user_path(@user.id)
      else
        render :edit
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin, :weight)
    end
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to current_user unless current_user?(@user)
    end
  end
  