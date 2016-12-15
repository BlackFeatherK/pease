class AccountsController < ApplicationController

  before_action :find_will

  def create
    @will.accounts.create()
  end



  protected

  def find_will
    @will = current_will
  end

  def params_account
    params.require(:account).permit(:bank , :account_type , :heir)
  end

end
