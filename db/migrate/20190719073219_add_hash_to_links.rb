class AddHashToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :hash, :string
  end
end
