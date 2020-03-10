class CreateMartialArts < ActiveRecord::Migration[6.0]
  def change
    create_table :martial_arts do |t|
      t.string :name

      t.timestamps
    end
  end
end
