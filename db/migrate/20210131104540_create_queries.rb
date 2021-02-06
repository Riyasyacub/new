class CreateQueries < ActiveRecord::Migration[6.0]
  def change
    create_table :queries do |t|
        t.string :email
        t.integer :number
        t.text :content
      t.timestamps
    end
  end
end
