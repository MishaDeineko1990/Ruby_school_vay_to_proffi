class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :client do |t|
      t.text :name
      t.text :phone
      t.text :datastemp
      t.text :barber
      t.text :color
    end
  end
end
