class Admin::UsersController < Admin::ApplicationController
  def show
    user
  end

  def index
    @q = User.ransack(params[:q])
    @users = @q.result.order(:id).order(:type).page(params[:page]).per(params[:per_page]).per(10)
  end

  def edit
    user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    return redirect_to(admin_users_url) if @user.save

    render(:new)
  end

  def update
    return redirect_to(admin_users_url) if user.update(user_params)

    render(:edit)
  end

  def destroy
    user.destroy
    redirect_to(admin_users_path)
  end

  private

  def user
    @user ||= User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :type)
  end
end
