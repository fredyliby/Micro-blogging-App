class ChangeCommentsTablePostId < ActiveRecord::Migration
  def change
  	remove_column :comments, :Post_id
  end
end
