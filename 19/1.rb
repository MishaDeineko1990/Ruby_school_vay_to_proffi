require 'sinatra'

get '/' do
    erb :index
end

get '/contacts' do
    'Phone: 0969131308'
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
