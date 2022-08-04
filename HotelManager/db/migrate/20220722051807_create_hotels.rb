class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :hotelname
      t.string :hoteladdress

      t.timestamps
    end
  end
end
