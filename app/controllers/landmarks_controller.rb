class LandmarksController < ApplicationController
  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])

    @landmark.save

    redirect("/landmarks/#{@landmark.id}")
  end

end
