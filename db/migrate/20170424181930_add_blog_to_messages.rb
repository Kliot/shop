class AddBlogToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :blog, foreign_key: true
  end
end
