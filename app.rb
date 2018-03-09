require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    to_pig = params["user_phrase"]
    STDERR.puts "#{to_pig} from app.rb"
    pig_function = PigLatinizer.new
    @pigformed = pig_function.to_pig_latin(to_pig)
    STDERR.puts @pigformed
    status = 200
    erb :pigged
  end
#   Create a POST method in your controller (app.rb) to receive your form's params.
#
# Build a PigLatinize model (in your models directory) that converts a string into pig latin.
#
# In your application controller, create an instance of the PigLatinize class to convert your user input to Pig Latin.
#
# Use ERB within a new view to display the final pig latin string to the user.

end
