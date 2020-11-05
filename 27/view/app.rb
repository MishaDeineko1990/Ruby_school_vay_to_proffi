require 'sqlite3'

db = SQLite3::Database.new 'barb.db'
db.results_as_hash = true

db.execute 'select * from Clients' do |row|
    print row['name']
    print "\t-\t"
    puts row['datat']
end