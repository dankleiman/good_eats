class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name, null: false
      t.integer :rating, null: false
      t.text :body

      t.timestamps
    end
  end
end
