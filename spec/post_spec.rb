require_relative"../lib/post.rb"

RSpec.describe Post do

	before :each do
		@test1 = Post.new("BLAHBLAH","2","three")
  	end

	describe "@title"do
		it "shows title" do
			expect(@test1.title).to eq("BLAHBLAH")
	end
end

	# it("#date returns date") do
	# end

	# it("#text returns text") do
	# end

end