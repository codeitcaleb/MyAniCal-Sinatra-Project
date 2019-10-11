class CreateAnime < ActiveRecord::Migration
  def change
    create_table :animes do |t|
    t.string :title
    t.string :synopsis
    t.string :day
    t.string :image_url
   end
  end
end
