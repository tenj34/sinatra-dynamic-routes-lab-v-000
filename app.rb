require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @num = params[:number].to_i**2
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    @number_of_times = params[:number].to_i
    @phrase = params[:phrase]
    @combined_phrase = ""
     @number_of_times.times do
      @combined_phrase += " #{@phrase}"
    end
    "#{@combined_phrase}"
  end
end
