class CreateJoinTableMoviesPerformers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :movies, :performers do |t|
       t.index [:movie_id, :performer_id]
       t.index [:performer_id, :movie_id]
    end
  end
end
