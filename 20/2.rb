require 'sinatra'

get '/' do
    erb :index
end

get '/contacts' do
    'Phone: 0969131308'
end

get '/teem1' do
    @title = 'Druzhba'
    @massage = 'Rizhanu'
    erb :massage
end

get '/teem2' do
    @title = 'Spartak'
    @massage = 'Khoroshiv'
    erb :massage
end

post '/' do
    @login = params[:login]
    @password = params[:password]
    
    if @login=='misha' && @password =='qwerty'
        erb :welcome
    else
        erb :submit_error
    end
end
