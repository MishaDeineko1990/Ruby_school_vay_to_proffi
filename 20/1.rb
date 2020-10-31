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

get '/under_constration' do
        
end





def under_constration var1, var2
    @title = var1
    @message = var2
    erb :under_constration
end

class One_1000_pages
    attr_reader
    def initialize model
        
    end
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