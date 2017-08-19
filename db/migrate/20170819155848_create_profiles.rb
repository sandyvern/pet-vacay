class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    
    create_table :profiles do |t|
      t.belongs_to :user, foreign_key: true
      t.text :bio
      t.string :city
      t.string :state
      t.string :zipcode
      t.text :pets, array: true, default: []
      t.integer :user_id

      t.timestamps
    end
    add_index :profiles, :pets, using: 'gin'
  end
end
