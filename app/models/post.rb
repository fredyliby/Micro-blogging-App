class Post < ActiveRecord::Base
	validates :title, presence:true, length:{ minimum:7}
	validates :body, presence:true,
end
end
