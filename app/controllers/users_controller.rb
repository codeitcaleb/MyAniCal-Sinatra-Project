class UsersController < ApplicationController

  get '/users/profile' do
    @user = current_user
    erb :'/users/profile'
  end

end