class CartsController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    experience = Experience.find(params[:experience_id])
    @cart.add_experience(experience.id)
    session[:cart] = @cart.contents
    flash[:success] = "#{pluralize(@cart.count_of(experience.id), experience.title)} added to your cart."
    redirect_to experiences_path
  end

  def show
    @cart_experiences = @cart.cart_experiences
  end

  def update
    type = params[:type]
    experience = Experience.find(params[:experience_id])
    @cart.check_quantity_change(type, experience)
    session[:cart] = @cart.contents
    redirect_back(fallback_location: cart_path)
  end

  def remove
    experience= Experience.find(params[:experience_id])
    @cart.remove_experience(params[:experience_id])
    flash[:success] = "Successfully removed <a href='/experiences/#{experience.id}' > #{experience.title}</a> from your cart."
    redirect_to cart_path
  end
end
