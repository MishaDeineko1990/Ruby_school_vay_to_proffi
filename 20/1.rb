require 'sinatra'

get '/' do
    erb :index
end

get '/contacts' do
    'Phone: 0969131308'
end

get '/teem1' do
    @title = 'Drushba'
    @message = 'Rizhani'
    erb :message
end

get '/teem2' do
    @title = 'Spartak'
    @message = 'Khoroshiv'
    erb :message
end

post '/' do
    @login = params[:login]
    @password = params[:password]

    if @login == 'misha' && @password == 'qwerty'
        erb :welcome
    else 
        erb :submit_error
    end
end