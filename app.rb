require './environment'

module FormsLab
  class App < Sinatra::Base

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
