class AccountsController < ApplicationController

  # before_action :find_will
  # before_action :find_account , :except => [:index , :create]

  def index
    @accounts = controller_index(controller_name)
  end

  def create
    @account = controller_create( controller_name , params_account)
  end

  def show
    @account = controller_show( controller_name , params[:id] )
  end

  def update
    if controller_update( controller_name , params[:id] , params_account )
      find_account
    else
      find_account
    end
    
  end

  def destroy
    @account = controller_destroy( controller_name , params[:id] )
  end



  protected

  def find_will
    @will = current_will
  end

  def find_account
    @account = @will.accounts.find(params[:id])
  end

  def params_account
    params.require(:account).permit(:bank , :account_type , :heirs_attributes => [:id, :heir_type , :name , :proportion])
  end
  
end
