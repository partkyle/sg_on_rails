class HomeController < ApplicationController
  def index
  end

  def mail
    ContactMailer.contact_email(params).deliver
    flash[:notice] = 'Mail Sent!'
    redirect_to root_path
  end
end
