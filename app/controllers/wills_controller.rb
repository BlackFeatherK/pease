class WillsController < ApplicationController

  before_action :authenticate_user!
  before_action :include_will, only: [:index, :show, :update]

  def index
    @will = @wills.find(current_user.will.id)
    @digital_asset = @will.digital_asset
    @properties = @will.properties
    @stock_portfolios = @will.stock_portfolios
    @accounts = @will.accounts
    @motors = @will.motors
    @jewelries = @will.jewelries
  end

  def show
    @will = @wills.find(current_user.will.id)
    @will.properties.build.heirs.build
    @will.stock_portfolios.build.heirs.build
    @will.accounts.build.heirs.build
    @will.motors.build.heirs.build
    @will.jewelries.build.heirs.build
    @will.others.build.heirs.build
  end

  def update 

    @will = @wills.find(current_user.will.id)
    @will.update(params_will)
    @will.properties.build.heirs.build
    @will.stock_portfolios.build.heirs.build
    @will.accounts.build.heirs.build
    @will.motors.build.heirs.build
    @will.jewelries.build.heirs.build
    @will.others.build.heirs.build
  end

  def words
  end

  def video
    
  end

  def preview
    @will = current_user.will
    @user = current_user
    if @user.gender == "Male"
      @gender = "男性"
    else
      @gender = "女性"
    end

    @properties =  @will.properties
    @motors = @will.motors
    @accounts = @will.accounts
    @stock_portfolios = @will.stock_portfolios
    @jewelries = @will.jewelries
    @funeral = @will.funerals.first
    @medical = @will.medicals.first 
  end

 

  private
  def include_will 
    @wills = Will.includes({:accounts => [:heirs]},
                           {:properties => [:heirs]},
                           {:stock_portfolios => [:heirs]},
                           {:motors => [:heirs]},
                           {:jewelries => [:heirs]},
                           {:others => [:heirs]}, :medicals
                           )
  end

  def params_will
    params.require(:will).permit(
      :properties_attributes => [ :id , :number , :address , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]],
      :stock_portfolios_attributes => [ :id , :bank , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]],
      :accounts_attributes => [ :id , :bank , :account_type , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]],
      :motors_attributes => [ :id , :number , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]],
      :jewelries_attributes => [ :id , :description , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]],
      :others_attributes => [ :id , :description , :_destroy , :heirs_attributes => [ :id , :heir_type , :name , :proportion]]
    )
  end

end
