require_relative"../lib/blog.rb"

RSpec.describe Blog do
	let (:blog) {Blog.new(@posts)}

	it("#posts return lists of posts") do
		expect(@blog.posts).to eq()
	end
end