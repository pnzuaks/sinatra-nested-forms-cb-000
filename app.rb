require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new
    end

    post '/pirates' do
    @pirate = Pirate.new(params[:pirate])

    params[:pirate][:ships].each do |details|
      Pirate.new(details)
    end

    @ships = Ship.all

    erb :student
  end
  end
end
