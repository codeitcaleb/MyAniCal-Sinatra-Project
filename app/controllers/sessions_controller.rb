class SessionsController < ApplicationController
    get '/signup' do 
        erb :'registrations/signup'
    end

    post '/registrations' do
      
        if User.find_by(email: params[:email])
           redirect to '/login'
        else
            @user = User.create(name: params[:name], email: params["email"], password: params["password"])
            session[:user_id] = @user.id 
            redirect to '/users/index'
        end
    end

    get '/login' do
        erb :'sessions/login'
    end

    post '/sessions' do
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect '/users/home'
        end
        redirect '/sessions/login'
  end
  
  get '/sessions/logout' do
       session.clear
       redirect '/'
  end

end