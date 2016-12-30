module UsersHelper

  def user_questions
    user = User.includes(:will => [:digital_assets,
                                    :funerals,
                                    :medicals,
                                    :accounts,
                                    :jewelries,
                                    :motors,
                                    :others,
                                    :properties,
                                    :stock_portfolios
                                    ]).find(current_user.id)
    funeral = user.will.funerals.size > 0 ? 0 : 1
    medical = user.will.medicals.size > 0 ? 0 : 1
    tangible_asset = user.will.accounts.size + user.will.jewelries.size + user.will.motors.size + user.will.others.size + user.will.properties.size + user.will.stock_portfolios.size > 0 ? 0 : 1
    digital_asset = user.will.digital_assets.size > 0 ? 0 : 1
    return funeral + medical + tangible_asset + digital_asset
  end

end
