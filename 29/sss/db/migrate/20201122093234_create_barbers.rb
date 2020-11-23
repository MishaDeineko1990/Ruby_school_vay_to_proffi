class CreateBarbers < ActiveRecord::Migration[6.0]
  def change

    create_table :barbers do |t|
      t.text :name

      t.timestamps
    end

    Barber.create :name=> "Jessie Pinkman"
    Barber.create :name=> "Jessie Hofman"
    Barber.create :name=> "Kiril Sander"

  end
end
