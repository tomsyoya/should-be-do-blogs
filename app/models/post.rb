class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    
    belongs_to :user
    has_many :comments
    has_many :favorites
end
