#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>!!!!cd "			
end

get '/about' do
	erb :about
end

get '/visit' do
	erb :visit
end

get '/contacts' do
	erb :contacts
  end

get '/admin' do
	erb :admin
end

post '/admin' do
    @login = params[:login]
    @password = params[:password]

    if @login == 'misha' && @password == 'qwerty'
        erb :list
    else 
        erb "error validation"
    end
end

post '/visit' do
	@name = params[:name]
	@phone = params[:phone]
	@data = params[:data]
	@barber = params[:barber]

	f= File.open 'views/list.erb', 'a'
    f.write "User #{@name}, phone: #{@phone}, Date and time #{@data}, barber #{@barber} <br/>   "
    f.close

	erb "Thank You weew well for you."

end