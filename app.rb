require "sinatra"
require "sinatra/reloader"
require_relative "lib/blog.rb"
require_relative "lib/post.rb"

blog = Blog.new

post1 = Post.new("Cats","04/1/2016" , "Meow")
post2 = Post.new("Dogs", "04/2/2016" , "Woof")
blog.add_post(post1)
blog.add_post(post2)


get "/" do
	@posts = blog.posts
	erb(:home)

end

get "/post_details/:id" do
	@id = params[:id].to_i
	@posts = blog.posts
	@posts[@id]
	erb :post_details
end 

