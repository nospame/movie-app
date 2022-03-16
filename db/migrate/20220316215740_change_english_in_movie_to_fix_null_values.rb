class ChangeEnglishInMovieToFixNullValues < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :english, :bool, :null => true
  end
end
