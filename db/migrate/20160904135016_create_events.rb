class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.integer :category_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :teaser, limit: 200
      t.text :description, limit: 2000
      t.string :cover_img
      t.string :street_no
      t.string :street_name
      t.string :floor
      t.string :town
      t.string :region
      t.string :postcode
      t.string :country

      t.timestamps null: false
    end
  end
end
