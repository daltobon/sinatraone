require 'sinatra'
require 'faker'
get '/' do  #ruta de about, home,
  @b = Array.new
    6.times.each do
      @b << Faker::DragonBall.character
    end
    @c = Array.new
      6.times.each do
        @c << Faker::Dune.quote
      end
    erb :index
end
