class PagesController < ApplicationController

    def user_details
        @user = current_user
        @posts = @user.posts
    end

    

  
end
