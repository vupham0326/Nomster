require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  user = FactoryGirl.create(:user)
 
  sign_in user
  	 place = FactoryGirl.create(:place)

  	 asser_difference 'Comment.count' do 
  	 		post :create, :place_id => place.id, {:comment => {
  	 				:message => 'Nice', 
  	 				:rating => '4_stars',
  	 			  }
  	 		}
  	 end

		assert_redirected_to places_path
		assert_equal 1, user.places.comment.count 
  # test "the truth" do
  #   assert true
  # end

end
