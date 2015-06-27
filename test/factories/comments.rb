FactoryGirl.define do
  	factory :comment do
	    message "omg"
	    rating "1_star"
	    association :user
	    association :place
  end
end