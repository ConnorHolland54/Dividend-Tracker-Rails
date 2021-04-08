class PortfoliosController < ApplicationController
  include UsersHelper
  before_action :require_logged_in

  def index
    @portfolios = User.find(current_user_id).portfolios
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    @portfolio.user_id = current_user_id
    if @portfolio.save
      redirect_to portfolios_path
    else
      puts "error"
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:name)
  end
end
