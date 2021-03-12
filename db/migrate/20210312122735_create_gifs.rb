class CreateGifs < ActiveRecord::Migration[6.0]
  def change
    create_table :gifs do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
