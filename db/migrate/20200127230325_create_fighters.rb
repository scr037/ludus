class CreateFighters < ActiveRecord::Migration[6.0]
  def change
    create_table :fighters do |t|
      t.string :firstname
      t.string :lastname
      t.references :gender, null: false, foreign_key: true
      t.date :date_of_birth
      t.integer :height
      t.decimal :weight
      t.references :category, null: false, foreign_key: true
      t.references :martial_art, null: false, foreign_key: true
      t.date :activity_begin
      t.date :last_payment
      t.text :notes
      t.string :image_url
      t.text :image_text

      t.timestamps
    end
  end
end
