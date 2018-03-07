require 'sinatra'
require 'faker'
require 'pry'

get '/' do
    @nombre = Faker::DragonBall.character
    @hello = "Hola #{params[:name]}"
    erb :index
end

get '/about' do
    @nosotros = Faker::Name.name
    binding.pry
    erb :about
end


get '/contact' do

    @direccion = Faker::Address.street_address
    erb :contact
end
