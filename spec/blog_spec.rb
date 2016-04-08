require_relative"../lib/blog.rb"

RSpec.describe Blog do
	before :each do
		@test = Blog.new
  	end

	describe "@posts" do
		it "shows empty array" do
			expect(@test.posts).to eq([])
		end
	end

end