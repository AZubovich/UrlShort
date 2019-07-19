class RemoveHashFromLinks < ActiveRecord::Migration[5.2]
  def change
  	remove_column :links, :hash, :string
  end
end
