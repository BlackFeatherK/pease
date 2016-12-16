class Api::AccountsController < Api::BaseController

  before_action :find_will
  before_action :find_account , :except => [:index , :create]

  def index
    @accounts = @will.accounts
  end

  def create
    @account = @will.accounts.build( params_account )
    if @account.save
      @account
    else
      fail Api::Except , @account.errors.full_messages
    end
  end

  def show
    if @account
      @account
    else
      render json: { message: "nill" }
    end
  end

  def update
    if @account.update( params_account )
      @account
    else 
      fail Api::Except , @account.errors.full_messages
    end
  end

  def destroy
    @account.destroy
    render json: { message: "success" }
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
