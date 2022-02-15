class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :longitude
      t.string :latitude
      t.boolean :in_area

      t.timestamps
    end
  end
end
