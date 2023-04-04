class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #route to get all snowboards from the DB
  get '/snowboards' do
    snowboards = Snowboard.all
    snowboards.to_json(include: :reviews)
  end

  post '/snowboards' do
    snowboard = Snowboard.create(
      brand: params[:brand],
      price: params[:price],
      preferred_riding: params[:preferred_riding],
      directional: params[:directional],
      image_url: params[:image_url]
    )
    snowboard.to_json
  end

  delete '/snowboards/:id' do
    snowboard = Snowboard.find(params[:id])
    snowboard.destroy
    snowboard.to_json
  end

  patch '/snowboards/:id' do
    snowboard = Snowboard.find(params[:id])
    snowboard.update(
      brand: params[:brand],
      price: params[:price],
      preferred_riding: params[:preferred_riding],
      directional: params[:directional],
      image_url: params[:image_url]
    )
    snowboard.to_json
  end

end
