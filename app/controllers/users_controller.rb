class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def follow
    other_user = User.find(params[:id])
    Subscription.create(follower_id: current_user.id, followee_id: other_user.id)
  end
 
  def unfollow
    other_user = User.find(params[:id])
    Subscription.where(follower_id: current_user.id, followee_id: other_user.id).last&.destroy
  end

   private

   def goal_params
     params.require(:user).permit(:userName, :email)
   end
end
