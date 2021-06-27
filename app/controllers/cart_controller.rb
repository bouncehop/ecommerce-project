# frozen_string_literal: true

class CartController < ApplicationController
  def create
    logger.debug("Added #{params[:id]} to cart")
    id = params[:id].to_i
    session[:shopping_cart] << id
    book = Book.find(id)
    flash[:notice] = "🛒 Added \"#{book.title}\" to Cart"
    redirect_to root_path
  end

  def destroy
    logger.debug("Added #{params[:id]} to cart")
    id = params[:id].to_i
    session[:shopping_cart].delete(id)
    book = Book.find(id)
    flash[:notice] = "🛒 Removed \"#{book.title}\" from Cart"
    redirect_to root_path
  end
end
