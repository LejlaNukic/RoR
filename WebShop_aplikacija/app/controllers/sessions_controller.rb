class SessionsController < ApplicationController
  def new
  end

  def create
  	user=User.find_by_username(params[:username])
  	if user and user.authenticate(params[:password])
  		session[:user_id]=user.id
      session[:cart_id]=user.cart.id
  		session[:username]=user.username
  		flash[:error]='Logovani ste'
  		redirect_to products_path
  	else
      flash[:error]='Pogresna username/password kombinacija'
      redirect_to new_session_path

  	end
  end

  def destroy
  	session[:user_id]=nil
  	session[:username]=nil
    session[:cart_id]=nil
  	sign_out
  	redirect_to new_session_path, notice: "Odjavljeni ste."
  end
end
