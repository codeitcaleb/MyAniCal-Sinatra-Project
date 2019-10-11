class Calendar < ActiveRecord::Base 
    belongs_to :user
    has_many :anime
end