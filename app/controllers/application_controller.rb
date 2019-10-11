require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'super_secret-extra_private_hero-mode'
  end

  get '/' do
    erb :home
  end

  helpers do

    def current_user
        User.find_by_id(session[:user_id]) 
    end

    def is_logged_in?
        !!session[:user_id]
    end
  end
end
