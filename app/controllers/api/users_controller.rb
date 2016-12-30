class Api::UsersController < Api::BaseController


  def create

  end

  def update
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:name))
  end

end
