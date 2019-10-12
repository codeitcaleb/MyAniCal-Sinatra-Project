class UsersController < ApplicationController

  get '/users/edit' do
    @user = current_user
    erb :'/users/edit'
  end

  get '/profile' do
    erb :'users/profile'
  end

end