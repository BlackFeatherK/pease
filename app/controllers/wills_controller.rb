class WillsController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = User.first
  end

  def show 
    @will = current_will
    @will.properties.build.heirs.build
    @will.stock_portfolios.build.heirs.build
    @will.accounts.build.heirs.build
    @will.motors.build.heirs.build
    @will.jewelries.build.heirs.build
    @will.others.build.heirs.build
  end

  def update 
    @will = current_will
    @will.update(params_will)
    redirect_to will_path(@will)
  end

  def words
  end

  def video
  end


  private

  def params_will
    params.require(:will).permit(:properties_attributes => [ :id , :number , :address , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]],
                                 :stock_portfolios_attributes => [ :id , :bank , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]],
                                 :accounts_attributes => [ :id , :bank , :account_type , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]],
                                 :motors_attributes => [ :id , :number , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]],
                                 :jewelries_attributes => [ :id , :description , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]],
                                 :others_attributes => [ :id , :description , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]]
                                )
  end

end
