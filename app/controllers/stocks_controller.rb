class StocksController < ApplicationController

  def index
    @stocks = current_user.stocks
  end

  def create
    ticker = params[:ticker].upcase
    stock_info = Api.get_info(ticker)
    # if !current_user.stocks.any? {|x| x.symbol == ticker} && !stock_info.empty?
    #   stock = Stock.create(:symbol => stock_info['Symbol'], :name => stock_info["Name"], :description => stock_info["Description"], :dividend_per_share => stock_info["DividendPerShare"], :dividend_date => stock_info["DividendDate"], :ex_dividend_date => stock_info['ExDividendDate'], :user_id => current_user.id)
    #   redirect_to '/wishlist'
    # else
    #   # Print Error
    #   redirect_to '/wishlist'
    # end
  end



  private
  def current_user
    User.find(session[:user_id])
  end
end
