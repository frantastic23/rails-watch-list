class AddImageUrlToLists < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :image_url, :string, default: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/logo.png.jpeg"
  end
end
