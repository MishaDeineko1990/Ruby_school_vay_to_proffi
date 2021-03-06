require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

class Client < ActiveRecord::Base
	validates :name, presents: true, length: {minimum: 3}
	validates :phone, presents: true
	validates :datestamp, presents: true
	validates :color, presents: true
end

class Barber < ActiveRecord::Base
end

before do
	@barbers = Barber.all
end

get '/' do
	erb :index			
end

get '/visit' do
	@c = Client.new
	erb :visit
end

get '/barber/:id' do
	@barber = Barber.find params[:id]
	erb :barber
end

get '/bookings' do
	@Clients= Cliuent.order ('created_at DESC')
	erb :bookings
end

get '/client/:id' do 
	@client = Client.find(params[:id])
	erb :client
end

post '/visit' do

	@c = Client.new params[:client]
	if @c.save
		erb "<h2>Спасибо, вы записались!</h2>"
	else
		@error = c.errors.full_messages.first
		erb :visit
	end
end
