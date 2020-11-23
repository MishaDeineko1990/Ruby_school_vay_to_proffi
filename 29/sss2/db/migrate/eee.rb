class CreateBarbers < ActiveRecord::Migration
    def change
  
        create_table :barbers do |t|
            t.text :name
  
            t.timestamps
        end
  
        Barber.create :name => 'Jessie Pinkman'
        Barber.create :name => 'Walter White'
        Barber.create :name => 'Gus Fring'  	
  
    end
  end
  

  class CreateClients < ActiveRecord::Migration
    def change
        
        create_table :client do |t|
            t.text :name
            t.text :phone
            t.text :datestamp
            t.text :barber
            t.text :color
  
            t.timestamps
        end
  
    end
  end
  