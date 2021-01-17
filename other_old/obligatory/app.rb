require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'


def innit_db
	@db = SQLite3::Database.new 'olx.db'
	@db.results_as_hash = true
end

def is_rubric_exists? db, name
	db.execute('select * from Rubric where name=?', [name]).length > 0
end

def seed_rubrics db, rubrics

	rubrics.each do |rubric|
		if !is_rubric_exists? db, rubric[0]
			db.execute 'insert into Rubric (name, content, image) values (?,?,?)', [rubric[0],rubric[1],rubric[2],]
		end 
	end

end


before do
    innit_db
    @rubrics = @db.execute 'select * from Rubric'
end





configure do
	innit_db
	@db.execute 'CREATE TABLE IF NOT EXISTS "Obligat"(
		"id" INTEGER PRIMARY KEY AUTOINCREMENT, 
        "created_date" date,
        "author" text,
        "rubric" text,
        "rubric_id" integer,
        "image" text,
        "title" text,
        "content" text,
        "price" integer);'


	@db.execute 'create table if not exists "Rubric"(
            "id" integer primary key autoincrement,
            "name" text,
            "content" text,
            "image" text
        );'

    @db.execute 'create table if not exists "Users"(
        "id" integer primary key autoincrement,
        "Last_name" text,
        "First_name" text,
        "Login" text,
        "Passsword" text,
        "Phone" text,
        "Prse" integer
    );'

    seed_rubrics @db, [
        [
            'Real estate',
            'тут ви можете продати чи кіпити нерухомість п всій Україні',
            'https://sn.sumy.ua/wp-content/uploads/2020/10/olx_logo.png'    
        ],
        [
            'Business and services',
            'Найбільший каталог для замовлення та продажі послуг',
            'https://sn.sumy.ua/wp-content/uploads/2020/10/olx_logo.png'    
        ],
        [
            'House and garden',
            'Все для дому тут',
            'https://sn.sumy.ua/wp-content/uploads/2020/10/olx_logo.png'    
        ]
    ]
    
end












get '/' do
	erb :index
end

get '/new_obligatory' do
    erb :new_obligatory
end


get '/rubric/:rubric' do
	# rubric = params[:rubric]
	

	# @resault_rubric = @db.execute 'select * from Obligat where rubric_id = ?', [rubric]

    # erb @resault_rubric

end


# select id from Rubric where name Нерухомість







post '/new_obligatory' do

    @title= params[:title]
	@content = params[:content]
	@price = params[:price]
	@image= params[:image]
    @rubric= params[:rubric]
    # @rubric= "Real estateь"
    @author= "misha"
    @rubr_id = @db.execute 'select id from Rubric where name = ?', [@rubric]
    # @rubr_id = 4

	# хеш
	hh = { 	:title => 'Введите заголовок',
            :content => 'Введите текст',
            :image= => 'Введите адрес картинки',
			:price => 'Введите цену' }

	@error = hh.select {|key,_| params[key] == ""}.values.join(", ")

	if @error != ''
		return erb :visit
	end


    #  ==========не работаєт insert into  Obligat через две переменых  rubric,  rubric_id,
#    db.execute 'insert into Obligat(created_date, author, rubric, rubric_id, image, title, content, price) values (datetime(), ?, ?, ?, ?, ?, ?, ?)', [@author ,@rubric, @rubr_id, @image, @title, @content, @price]
	
	@db.execute 'insert into
		Obligat
		(
            created_date,
            author,
            rubric,
            rubric_id,
            image,
            title,
            content,
            price
            
		)
		values (datetime(),?, ?, ?, ?, ?, ?, ?)', [@author ,@rubric, @rubr_id, @image, @title, @content, @price]

	erb "<h2>Спасибо, вы записались!#{@rubric}</h2>"

end


# select * from Obligat	
# @db.execute 'insert into Obligat(created_date, author, rubric, rubric_id, image, title, content, price) values (datetime(), "one", "two", "thre", "fore", "five", "six", "seven")', [@author ,@rubric, @rubr_id, @image, @title, @content, @price]
