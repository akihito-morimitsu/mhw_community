class MicropostsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user,   only: :destroy
  

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end
  
  def show 
    @micropost = Micropost.find(params[:id])
    @user = User.find_by(id: @micropost.user_id)
    @comment = Comment.where(micropost_id: @micropost.id)
  end

  def destroy
    @micropost.destroy
    redirect_to root_url
  end
  
  
   private

    def micropost_params
      params.require(:micropost).permit(:theme, :tweet, :category)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
