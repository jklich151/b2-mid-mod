class CreateStudioMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :studio_movies do |t|
      t.references :movie, foreign_key: true
      t.references :studio, foreign_key: true

      t.timestamps
    end
  end
end
