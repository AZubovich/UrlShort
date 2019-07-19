class AddShortUrlToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :short_url, :string
  end
end
