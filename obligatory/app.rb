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
            'Нерухомість',
            'тут ви можете продати чи кіпити нерухомість п всій Україні',
            'https://sn.sumy.ua/wp-content/uploads/2020/10/olx_logo.png'    
        ],
        [
            'Бізнес та послуги',
            'Найбільший каталог для замовлення та продажі послуг',
            'https://sn.sumy.ua/wp-content/uploads/2020/10/olx_logo.png'    
        ],
        [
            'Дім сад',
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










post '/new_obligatory' do

    @title= params[:title]
	@content = params[:content]
	@price = params[:price]
	@image= params[:image]
    @rubric= params[:rubric]
    @author= "misha"

	# хеш
	hh = { 	:title => 'Введите заголовок',
            :content => 'Введите текст',
            :image= => 'Введите адрес картинки',
			:price => 'Введите цену' }

	@error = hh.select {|key,_| params[key] == ""}.values.join(", ")

	if @error != ''
		return erb :visit
	end

	
	@db.execute 'insert into
		Obligat
		(
            created_date,
            author,
            rubric,
            image,
            title,
            content,
            price
            
		)
		values (datetime(), ?, ?, ?, ?, ?, ?)', [@author ,@rubric, @image, @title, @comtent, @price]

	erb "<h2>Спасибо, вы записались!</h2>"

    erb :new_obligatory
end