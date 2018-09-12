require './environment'
require relative 'models/pirate.rb'
require relative 'models/ship.rb'


module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
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
