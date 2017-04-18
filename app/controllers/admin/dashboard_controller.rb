class Admin::DashboardController < ApplicationController

  before_action :require_admin

  def require_admin
    render file: '/public/404' unless current_admin?
  end

  def index
    @pending_experiences = Experience.where(status: 'pending')
    if params[:status]
      @orders = Order.where(status: params[:status])
    else
      @orders = Order.all
    end
  end

end
