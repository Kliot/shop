class AddImageToBlog < ActiveRecord::Migration[5.0]
  def up
    add_attachment :blogs, :image_url
  end

  def down
    remove_attachment :blogs, :image_url
  end
end
