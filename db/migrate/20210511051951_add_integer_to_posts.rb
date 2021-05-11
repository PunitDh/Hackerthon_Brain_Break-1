class AddIntegerToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :body, :integer
  end
end
