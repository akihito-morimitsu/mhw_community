class StaticPagesController < ApplicationController

  def home
      @captures = Micropost.where(:category => "攻略").first(5)
      @members = Micropost.where(:category => "募集").first(5)
      @others = Micropost.where(:category => "その他").first(5)
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
  
  def post
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
  end
  
  def new
          @captures = Micropost.where(:category => "攻略").all
      @members = Micropost.where(:category => "募集").all
      @others = Micropost.where(:category => "その他").all
  end
end

