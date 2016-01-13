class ChangeCommentsTable < ActiveRecord::Migration
  def change
  	# rename_column :comments, :Post_id, :post_id
  	add_column :comments, :user_id, :integer
  	add_column :posts, :user_id, :integer
  end
end
