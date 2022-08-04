class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :hotel_name
      t.string :hotel_address

      t.timestamps
    end
  end
end
