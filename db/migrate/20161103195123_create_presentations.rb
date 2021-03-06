class CreatePresentations < ActiveRecord::Migration[5.0]
  def change
    create_table :presentations do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :audience, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :time_taken
      t.text :notes
      t.references :user, index: true

      t.timestamps(null: false)
    end
  end
end
