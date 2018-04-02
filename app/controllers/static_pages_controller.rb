class StaticPagesController < ApplicationController

  def home
      @captures = Micropost.where(:category => "攻略").first(4)
      @members = Micropost.where(:category => "募集").first(4)
      @others = Micropost.where(:category => "その他").first(4)
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
    @search = Micropost.search(params[:q])
    @microposts = @search.result
  end
end

