class User < ApplicationRecord
    mount_uploader :image, ImageUploader
    
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    
    has_many :favorite_posts, through: :favorites, source: :post
    
    validates :name, presence: true, length: {maximum: 30}
    validates :email, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true
    
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, :on => :create
end
