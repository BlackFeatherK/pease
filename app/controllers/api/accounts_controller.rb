class Api::AccountsController < Api::BaseController

  before_action :find_will
  before_action :find_account , :except => [:index , :create]

  def index
    controller_index(controller_name)
  end

  def create
    controller_create( controller_name , params_account)
  end

  def show
    controller_show( controller_name , params[:id] )
  end

  def update
    controller_update( controller_name , params[:id] , params_account )
  end

  def destroy
    controller_destroy( controller_name , params[:id] )
  end



  protected

  def find_will
    @will = current_will
  end

  def find_account
    @account = @will.accounts.find_by_id(params[:id])
  end

  def params_account
    params.permit(:bank , :account_type , :heir)
  end
  
end
