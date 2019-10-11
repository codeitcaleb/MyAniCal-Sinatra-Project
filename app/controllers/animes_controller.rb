class AnimesController < ApplicationController

  # GET: /animes
  get "/animes" do
    erb :"/animes/index.html"
  end

  # GET: /animes/new
  get "/animes/new" do
    erb :"/animes/new.html"
  end
 
end


















 # # POST: /animes
  # post "/animes" do
  #   redirect "/animes"
  # end

  # # GET: /animes/5
  # get "/animes/:id" do
  #   erb :"/animes/show.html"
  # end

  # # GET: /animes/5/edit
  # get "/animes/:id/edit" do
  #   erb :"/animes/edit.html"
  # end

  # # PATCH: /animes/5
  # patch "/animes/:id" do
  #   redirect "/animes/:id"
  # end
