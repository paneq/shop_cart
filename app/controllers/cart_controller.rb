class CartController < ApplicationController

  def add
    product = Product.find(params[:product_id]
    id = params[:id]


    if session[:cart_id] then
      cart = session[:cart]
    else
      session[:cart_id] = {}
      cart = session[:cart]
    end

    if cart[id]
       cart[id] = cart[id] + 1
    else
       cart[id] = 1
    end
  redirect_to :action => :index
  end # end of add method

  def clearCart
    session[:cart_id] = nil
    redirect_to :action => :index
  end

  def index
    if session[:cart_id] then
      @cart = session[:cart_id]
    else
      @cart = {}
    end
  end
end
