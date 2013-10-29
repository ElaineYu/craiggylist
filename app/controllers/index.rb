#INDEX, part of "read" in CRUD
get '/' do
	@categories = Category.all
	erb :index
end

#New post, part of "create" in CRUD
# provide an empty form to be filled out for a new post here
get '/new_post' do
	erb :new_post
end

#New post, part of "create" in CRUD
# print the new post based on user input
post '/new_post' do
	@post = Post.create(title: params[:title], description: params[:description], location: params[:location], price: params[:price], phone: params[:phone])
	erb :see_new_post
end

# find post by user, part of "read" in CRUD
get '/post/:id' do
	@post = Post.find(params[:id])
	erb :see_new_post
end

# Show contact, part of "read" in CRUD
get '/posts' do 
	@posts = Post.all
	erb :show_all_posts
end

# Edit, part of "update" in CRUD
get '/post/:id/edit' do
	@post = Post.find(params[:id])
	erb :edit_post
end

# Delete, part of "delete" in CRUD
get '/post/:id/delete' do
	@post = Post.find(params[:id])
	@post.destroy
	redirect :show_all_posts
end

