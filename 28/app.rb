require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
	erb "HAllo on Liprozorium"
end



get '/new' do
	erb :new
end