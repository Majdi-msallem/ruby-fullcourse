#Class
class ApplicationController < ActionController::Base
  #methode
  def print_hello
    #variable_instance commence avec @
    @name = "Ahmed"
    puts 'hello Friend'
    puts @name
  end

end
