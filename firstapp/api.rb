require 'sinatra'
require 'faker'

get '/' do
    @nombre = Faker::DragonBall.character

    erb :index
end

get '/about' do
    @nosotros = Faker::Name.name

    erb :about
end

get '/contact' do

    @direccion = Faker::Address.street_address
    erb :contact
end
