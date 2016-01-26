module AuthenticationHelpers
	module Feature
		def sign_in(user, options={})
			visit "/users/sign_in"
			fill_in "Email", with: user.email
			fill_in "Password", with: options[:password]
			click_button "Log In"
		end
	end
end