class CreateUserAnimeReviews < ActiveRecord::Migration
  def change
    create_table :user_anime_reviews do |t|
      t.text :review
      t.integer :user_id
      t.integer :anime_id
    end
  end
end
