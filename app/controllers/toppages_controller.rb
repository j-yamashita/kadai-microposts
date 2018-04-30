class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @micropost = current_user.microposts.build
      @microposts = current_user.microposts.order('created_at desc').page(params[:page])
    end
  end
end
