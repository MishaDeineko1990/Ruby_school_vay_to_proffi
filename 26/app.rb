require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

def get_db
	SQLite3::Database.new 'barb.db'
end


configure do
	db = get_db
	db.execute 'CREATE TABLE IF NOT EXISTS "Clients"(
		"id" INTEGER PRIMARY KEY AUTOINCREMENT, 
		"name" text, "phone" text, "datat" text, 
		"barber" text, "color" text);'

	db.close

end

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
		:username => "Enter You name",
		:phone => "Enter phone",
		:datetime => "Enter date and time"
	}

	@error = hh.select {|key,_| params[key] == ""}.values.join(", ")

	if @error != ''
		return erb :visit
	end


	
	
		# db.execute 'CREATE TABLE "AUTO"("Id" INTEGER PRIMARY KEY AUTOINCREMENT, "Name" VARCHAR, "Price" INTEGER)'
		# CREATE TABLE "Clients"("Id" INTEGER PRIMARY KEY AUTOINCREMENT, "Name" VARCHAR, "Phone" VARCHAR, "DataTime" VARCHAR, "Barber" VA RCHAR, "Color" VARCHAR,);
	
		# db.execute "insert into AUTO (Name, Price) values ('VAZ', 800)"
		# db.execute "insert into AUTO (Name, Price) values ('GAZ', 1800)"

	db = get_db

		db.execute 'insert into
						 Clients 
						 (
							 name,
							 phone,
							 datat,
							 barber,
							 color
						) 
						values (?, ?, ?, ?, ?)', [@username, @phone, @datetime, @barber, @color]
		# db.execute "insert into AUTO (Name, Price) values ('LAZ', 4800)"

		# insert into Clients (name, phone, datat, barber, color) values ( "?", "?", "?", "?", "?")

		erb "Ok, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"

		
		db.close

				
		# =========FOR CONSOLE===========


		# create tables       -----     CREATE TABLE "AUTO"("Id" INTEGER PRIMARY KEY AUTOINCREMENT, "Name" VARCHAR, "Price" INTEGER);

		# delate table        ------     drop table name_table;

		# see all tables in db    --   .tables

		# add to tables data     ----   insert into AUTO (Name, Price) values ('VAZ', 800);

		# show all element from table AUTO ------  select * from AUTO;

		# Exit -----    .exit


	erb "Ok, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"

end


# https://stackoverflow.com/questions/33557817/how-to-send-mail-with-sinatra-using-pony

