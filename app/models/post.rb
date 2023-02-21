class Post < ApplicationRecord
    belongs_to :user
    validates :titre, presence: true
    validates :image, presence: true
    has_one_attached :image 
end 
