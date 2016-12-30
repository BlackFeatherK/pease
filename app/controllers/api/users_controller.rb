class Api::UsersController < Api::BaseController


  def create

  end

  def update
    @user = User.find(params[:id])
    @user.update(params_user)
  end


  private

  def params_user
    params.require(:user).permit(:audio)
  end

end


