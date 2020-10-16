class Booking
    def initialize #create and initialize varible 
        @books = []
    end

    def add_books book  # add in arrey data
        @books << book
    end

    def show_books
        @books.each_with_index  do |single, i| # go to arrey and out puts DATA
            p "#{i+1} - #{single}"
        end
        
    end

end

a = Booking.new  # kreate instance classe


a.add_books ("Biblia")   # send data in class 
a.add_books ("Many is time")


a.show_books  # appeal to method class


