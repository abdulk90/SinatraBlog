class Blog
	attr_accessor :posts
	def initialize
		@posts = []
	end

	def add_post(single_post)
		@posts.push(single_post)
	end

	def latest_posts
		@posts = @posts.sort do |post1, post2|
			post2.title <=> post1.title
		end
	end

end