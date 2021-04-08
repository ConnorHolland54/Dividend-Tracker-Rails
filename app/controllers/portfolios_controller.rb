class PortfoliosController < ApplicationController
before_action :require_logged_in

  def index
    @session_id = helpers.current_user
    @portfolios = User.find(helpers.current_user).portfolios
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    @portfolio.user_id = helpers.current_user
    if @portfolio.save
      redirect_to portfolios_path
    else
      puts "error"
    end
  end


  # def current_user
  #   session[:user_id]
  # end

  private
  def require_logged_in
    redirect_to '/login' unless helpers.current_user
  end

  def portfolio_params
    params.require(:portfolio).permit(:name)
  end
end
