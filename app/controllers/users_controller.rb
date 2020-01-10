class UsersController < ApplicationController

  get '/profile' do
    erb :'users/profile'
  end
end