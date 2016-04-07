require "sinatra"
require_relative "lib/blog.rb"
require_relative "lib/post.rb"

@blog = Blog.new
blog.add_post Post.new("Cats", "1", "Meow")
blog.add_post Post.new("Dogs", "2", "Woof")

get "/" do
	@posts = blog.posts

	erb(:home)
end