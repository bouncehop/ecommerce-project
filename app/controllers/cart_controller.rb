class CartController < ApplicationController
  def create
    logger.debug("Added #{params[:id]} to cart")
  end

  def destroy
    logger.debug("Added #{params[:id]} to cart")
  end


end
