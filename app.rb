require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 
        user_phrase = params[:user_phrase]
        word = PigLatinizer.new
        @return_word = word.piglatinize(user_phrase)
        erb :show
    end


end