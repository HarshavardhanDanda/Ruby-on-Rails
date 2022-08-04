class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.date :expires_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
