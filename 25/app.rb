require 'sqlite3'

db = SQLite3::Database.new 'test.sqlite'

# db.execute 'CREATE TABLE "AUTO"("Id" INTEGER PRIMARY KEY AUTOINCREMENT, "Name" VARCHAR, "Price" INTEGER)'

# db.execute "insert into AUTO (Name, Price) values ('VAZ', 800)"
# db.execute "insert into AUTO (Name, Price) values ('GAZ', 1800)"

db.execute "insert into AUTO (Name, Price) values ('PAZ', 3800)"
db.execute "insert into AUTO (Name, Price) values ('LAZ', 4800)"



db.execute "SELECT * FROM AUTO" do |car|
	puts car
	puts "===="
end

db.close


# =========FOR CONSOLE===========


# create tables       -----     CREATE TABLE "AUTO"("Id" INTEGER PRIMARY KEY AUTOINCREMENT, "Name" VARCHAR, "Price" INTEGER);

# see all tables in db    --   .tables

# add to tables data     ----   insert into AUTO (Name, Price) values ('VAZ', 800);

# show all element from table AUTO ------  select * from AUTO;

# Exit -----    .exit