require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new
    end

    post '/pirates' do
    @pirate = Pirate.new(params[:pirate])

    params[:pirate][:courses].each do |details|
      Pira.new(details)
    end

    @courses = Course.all

    erb :student
  end
  end
end
