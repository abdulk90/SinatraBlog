class Blog
	attr_accessor :posts
	def initialize ()
		@posts = []
	end

	def add_post(single_post)
		@posts.push(single_post)
	end

end