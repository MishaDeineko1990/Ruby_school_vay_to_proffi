require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

set :database, "sqlite3:barbershop.db" 

get "/" do
    erb "dddd"
end