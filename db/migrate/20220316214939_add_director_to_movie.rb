class AddDirectorToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :director, :string
    add_column :movies, :english, :bool, :null => false, :default => true
  end
end
