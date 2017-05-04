class AddLikesToBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :likers_count, :integer, :default => 0
  end
end
