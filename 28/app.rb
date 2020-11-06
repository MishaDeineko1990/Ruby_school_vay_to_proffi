require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

def innit_db
	@db = SQLite3::Database.new
	@db.results_as_hash = true
end

before do
	innit_db
end

get '/' do
	erb "HAllo on Liprozorium"
end



get '/new' do
	erb :new
end

post '/new' do
	@content = params[:content]

	erb "You typed #{@content}"
end