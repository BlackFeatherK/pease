class Api::PrivateSharesController < Api::BaseController

  before_action :find_will
  before_action :find_private_share , :except => [:index , :create]

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

  def find_private_share
    @private_share = @will.private_shares.find_by_id(params[:id])
  end

  def params_private_share
    params.permit( :company , :stock , :amount , :heir)
  end

end
