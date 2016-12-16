class Api::PrivateSharesController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :find_will
  before_action :find_private_share , :except => [:index , :create]

  def index
    @private_shares = @will.private_shares
  end

  def create
    @private_share = @will.private_shares.build( params_private_share )
    if @private_share.save
      @private_share
    else
      fail Api::Except , @private_share.errors.full_messages
    end
  end

  def show
    if @private_share
      @private_share
    else
      render json: { message: "nill"}
    end
  end

  def update
    if @private_share.update( params_private_share )
      @private_share
    else 
      fail Api::Except , @private_share.errors.full_messages
    end
  end

  def destroy
    @private_share.destroy
    render json: { message: "success" }
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
