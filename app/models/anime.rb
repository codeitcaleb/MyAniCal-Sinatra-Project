class Anime < ActiveRecord::Base
   has_many :user_schedules
   has_many :user_anime_reviews
   has_many :users, through: :user_schedules
end