require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	
	erb :about
end

get '/visit' do
	erb :visit
end

post '/visit' do

	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]

	@x = def is_a_valid_email?(email)
	(email =~ /^(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+@{1}((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,4}$/i)
  end

	hh = {
		:username => [
			"Enter You name", [
				[
					@x,"email write dont true"
				],
				[
					@x,"email write dont true"
				]
			]
		],
		:phone => ["Enter phone", 1],
		:datetime => ["Enter date and time", 1]
	}

	hh.each do |kay, value|
		if params[kay]==""
			@error = value[0]
			return erb :visit
		else

			@error = value[1][0][0]
			return erb :visit
			# value[1].each do |vv|
			# 	if vv[0](params[kay])==false
			# 		@error = vv[1]
			# 		return erb :visit
			# 	end
			# end
		end
	end
end
