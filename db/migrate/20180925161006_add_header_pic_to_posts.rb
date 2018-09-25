class AddHeaderPicToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :header_pic, :string
  end
end
