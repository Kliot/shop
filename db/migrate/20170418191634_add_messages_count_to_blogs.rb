class AddMessagesCountToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :messages_count, :integer, null: false, default: 0
  end
end
