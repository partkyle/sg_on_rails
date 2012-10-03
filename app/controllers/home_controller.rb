class HomeController < ApplicationController
  def index
  end

  def mail

    flash[:notice] = 'Mail Sent!'
    redirect_to root_path
  end
end
