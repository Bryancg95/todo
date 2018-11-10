class SendController < ApplicationController
  def index
  end
  def create
    @user= current_user
    UserMailer.new_item(current_user).deliver
    flash[:notice]= "mensaje enviado"
    redirect_to send_path
  end
end
