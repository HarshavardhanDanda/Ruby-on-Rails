class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :domain

      t.timestamps

      #no two companies have two domains
      t.index :domain, unique: true 
    end
  end
end
