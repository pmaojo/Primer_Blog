FactoryGirl.define do
	factory :user do
		first_name "First"
		last_name "Last"
		sequence(:email) { |n| "user#{n}@rores.com"}
		password "ror_es"
	end

	# factory :post do
	# 	title "Post title"
	# 	description "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse massa velit, aliquet ut sapien non, ullamcorper pharetra sem. Etiam nibh odio, fermentum eu magna non, congue auctor nibh"
	# 	user
	# end
end