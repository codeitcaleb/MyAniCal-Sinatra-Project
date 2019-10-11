class User < ActiveRecord::Base
    has_one :calendar
    has_many :anime, through: :calendar
    
    validates :name, presence: true
    validates :email, uniqueness: true
    has_secure_password
end