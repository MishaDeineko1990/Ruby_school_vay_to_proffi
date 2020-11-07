require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

def innit_db
	@db = SQLite3::Database.new 'lepr.db'
	@db.results_as_hash = true
end

before do
	innit_db
end

configure do
	innit_db
	@db.execute 'CREATE TABLE IF NOT EXISTS "Posts"(
		"id" INTEGER PRIMARY KEY AUTOINCREMENT, 
		"created_date" date,
		"content" text);'


		@db.execute 'CREATE TABLE IF NOT EXISTS "Coments"(
		"id" INTEGER PRIMARY KEY AUTOINCREMENT, 
		"created_date" date,
		"content" text,
		"post_id" integer);'


end

get '/' do
	erb "HAllo on Liprozorium"
end

get '/new' do
	erb :new
end

get '/show_posts' do
	@res = @db.execute 'select * from Posts order by id desc'
	
	erb :show_posts
end

post '/new' do

	@content = params[:content]

	if @content.length <= 0
		@error ="Type text"
		return erb :new
	end
	@db.execute 'insert into
	Posts
	(
		created_date,
		content
   	) 
   	values (datetime(),?)', [@content]

	redirect to '/show_posts'
end

get '/details/:post_id' do
	post_id = params[:post_id]
	res= @db.execute 'select * from Posts where id = ?', [post_id]
	@row = res[0]

	@res_com = @db.execute 'select * from Coments where post_id = ?', [post_id]
	


	erb :details
end

post '/details/:post_id' do
	post_id = params[:post_id]

	content = params[:content]

	@db.execute 'insert into
	Coments
	(
		created_date,
		content,
		post_id
   	) 
   	values (datetime(),?,?)', [ content , post_id] 

	   redirect to ('/details/' + post_id)

end