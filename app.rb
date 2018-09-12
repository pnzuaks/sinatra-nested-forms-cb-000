require './environment'
require_relative './app/models/pirate.rb'
require_relative './app/models/ship.rb'


module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :pirates/new
    end

    post '/new' do
    @pirate = Pirate.new(params[:pirate])

    params[:pirate][:ships].each do |details|
      Pirate.new(details)
    end

    @ships = Ship.all
    erb :show
  end
  end
end
