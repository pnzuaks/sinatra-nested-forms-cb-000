require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new
    end

    post '/pirate' do
    @student = Student.new(params[:student])

    params[:student][:courses].each do |details|
      Course.new(details)
    end

    @courses = Course.all

    erb :student
  end
  end
end
