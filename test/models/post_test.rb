require 'test_helper'

class PostTest < ActiveSupport::TestCase
  	
  	test " the post requires content" do
  		post = Post.new
  		assert !post.save, " the post have ZERO content"
  	end

  	test " the post have more 6 characters" do
  		post = Post.new
  		post.content = "short"

  		
  		assert !post.save, " the post have LESS 6 characters"
  	end


  # test "the truth" do
  #   assert true
  # end
end
