class User < ApplicationRecord
    mount_uploader :image, ImageUploader
    
    has_many :posts
    has_many :comments
    has_many :favorites
    
    validates :name, presence: true, length: {maximum: 30}
    validates :email, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true
    
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, :on => :create
end
