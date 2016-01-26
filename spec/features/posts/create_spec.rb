require 'rails_helper'

#Bloque Describe de nuestra Test suite
describe "Creating todo lists" do
	#Creamos un usuario usando FactoryGirl
	let(:user){ create(:user) }

	#Antes de hacer cualquier test loggeamos al usuario
	before do
		sign_in user, password: 'ror_es'
	end

	#Método utilitario para crear posts, en la Test suite
	def create_post(options={})
		options[:title] ||= %Q|My Beautiful Post|
		options[:body] ||= %Q|My Beautiful post body|

		click_link "Crear Post"
		expect(page).to have_content("Crear nuevo post")

		#Corresponden a los Label de los campos
		fill_in "Título", with: options[:title]
		fill_in "Cuerpo", with: options[:body] 
		click_button "Guardar"
	end

	#Test cases
	#----------
	it "redirects to the My posts index page on success" do
		create_post
		expect(page).to have_content(%Q|My Beautiful Post|)
	end

	it "displays an error when the post has no title" do
		expect(Post.count).to eq(0)

		create_post title: %Q||

		expect(page).to have_content(/campo requerido/i)
		expect(Post.count).to eq(0)

		visit "/my_posts"
		expect(page).to_not have_content("My Beautiful post body")
	end

	it "displays an error when the post has a title less than 8 characters" do
		expect(Post.count).to eq(0)

		create_post title: %Q|Hi|

		expect(page).to have_content(/muy corto/i)
		expect(Post.count).to eq(0)

		visit "/my_posts"
		expect(page).to_not have_content("Hi")
	end

	it "displays an error when the post has no body" do
		expect(Post.count).to eq(0)

		create_post body: %Q||

		expect(page).to have_content(/campo requerido/i)
		expect(Post.count).to eq(0)

		visit "/my_posts"
		expect(page).to_not have_content("My Beautiful Post")
	end
end