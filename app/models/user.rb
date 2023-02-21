class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :messages 

  has_many :follower_followee_subscriptions, :class_name => "Subscription", :foreign_key => "follower_id" 
  has_many :followees, :through => :follower_followee_subscriptions, source: :followee
  has_many :followee_follower_subscriptions, :class_name => "Subscription", :foreign_key => "followee_id"
  has_many :followers, :through => :followee_follower_subscriptions, source: :follower
  

  def follow(other_user)
   Subscription.create(follower_id: self.id, followee_id: other_user.id)
  end

  def unfollow(other_user)
    Subscription.create(follower_id: self.id, followee_id: other_user.id).last&.destroy
  end

  

end
  
  

  







