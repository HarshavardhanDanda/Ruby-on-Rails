class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.references :company, foreign_key: true
      t.string :name
      t.text :content

      t.timestamps
      #ensure doc names are unique
      t.index [:company_id,:name], unique:true 
    end
  end
end
