class UsersController < ApplicationController

  before_action :set_user, only: [:edit, :update, :show, :destroy]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to articles_url, notice: "Welcome to the Alpha Blog #{ @user.username }!." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    # DRY
  end

  def update
    # DRY - @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = "User was successfully updated"
        redirect_to user_url(@user)
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  def show
    # DRY
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
