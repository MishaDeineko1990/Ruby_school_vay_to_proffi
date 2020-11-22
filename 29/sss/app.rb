require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db" 

class Client < ActiveRecord::Base
    
end

class Barber < ActiveRecord::Base
    
end

get "/" do
    @barbers = Barber.all
    @turn_barbers = Barber.order "created_at DESC"
    erb :index
end


# rake db:create_migration create_clients
# rake db:migrate