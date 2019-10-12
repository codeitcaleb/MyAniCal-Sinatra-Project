class SessionsController < ApplicationController

  get '/signup' do
     erb :signup
  end

  post '/signup' do
      
    if User.find_by(email: params[:email])
       redirect to '/index'
    else
       @user = User.create(name: params[:name], email: params["email"], password: params["password"])
        session[:user_id] = @user.id 
        redirect to '/animes/edit'
    end
  end

  get '/login' do
    erb :login
  end

  post '/login' do

    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect '/animes/edit'
    else
        redirect '/login'
    end
  end
  
  get '/logout' do
    session.clear
    redirect '/'
  end

end
