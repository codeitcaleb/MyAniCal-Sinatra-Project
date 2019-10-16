class AnimeController < ApplicationController

    post '/animes' do
       
        params["choice"].each do |anime_id|
            anime = Anime.find_by(id: anime_id.to_i)
            current_user.animes << anime if !current_user.animes.include?(anime)
            current_user.save
        end
         #binding.pry
       redirect to '/profile'
    end

    get '/animes/edit' do
        @user = current_user
        erb :'/animes/edit.html'
    end

    patch '/animes' do
       
        current_user.animes.destroy_all
        params["choice"].each do |anime_id|
            anime = Anime.find_by(id: anime_id.to_i)
            current_user.animes << anime 
            current_user.save
        end
         #binding.pry
       redirect to '/profile'
    end

    get '/animes/:id' do
        @anime = Anime.find_by_id(params[:id])
        erb :'/animes/show.html'
    end

    
  
end