class UserAnimeReviewsController < ApplicationController

    get '/reviews' do
        erb :'/user_anime_reviews/index.html'
    end

     get '/reviews/new' do
        if is_logged_in?
            erb :'/user_anime_reviews/new.html'
        else
            redirect '/login'
        end
    end

    post '/reviews' do 
        @review = UserAnimeReview.create(review: params["review"])
        @review.user = current_user
        @review.anime = Anime.find(params["anime"].to_i)
        @review.save
        redirect "/reviews"
    end

    get '/reviews/:id' do
        @review = UserAnimeReview.find_by_id(params[:id])
        erb :'/user_anime_reviews/show.html'
    end

    get '/reviews/:id/edit' do
        @review = UserAnimeReview.find_by_id(params[:id])
        erb :'/user_anime_reviews/edit.html'
    end

    patch '/reviews/:id' do 
        review = UserAnimeReview.find_by_id(params[:id])
        review.review = params["review"]
        review.save
        redirect to "/reviews/#{review.id}"
    end

    delete '/reviews/:id/delete' do
        review = UserAnimeReview.find_by_id(params[:id])
        review.delete
        redirect '/reviews'
    end
end