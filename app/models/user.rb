class User < ActiveRecord::Base
    has_one :calendar
    has_many :anime, through: :calendar
    
    validates :name, presence: true
    validate :email, uniqueness: true
    has_secure_password
end