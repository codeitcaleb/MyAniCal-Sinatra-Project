class SessionsController < ApplicationController
    get '/signup' do 
        erb :'registrations/signup'
    end

    post '/registrations' do
        @user = User.find_by(email: params[:email], password: params[:password])
        @user.save
        sessions[:user_id] = @user.id 

        redirect '/users/home'
    end

    get '/login' do
        erb :'sessions/login'
    end

    post '/sessions' do
        @user = User.find_by(email: params[:email], password: params[:password])

    end


end