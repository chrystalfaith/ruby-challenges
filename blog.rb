class My_Blog
	def initialize
		@time_created = Time.now
		puts "What would you like to call your blog?"
		@blog_title = gets.chomp
		@all_posts = []
		@total_posts = 0
	end

	def create_post
		new_post = Blog_Post.new
		puts "This is my brand spanking new blog post!"
		@all_posts << new_post
		@total_posts += 1
	end
	
	def collect_posts
		return @all_posts
	end
	
	def publish(all_posts)
		all_posts.each do |blog_post|
		puts blog_post.title
		puts blog_post.time_created
		puts blog_post.content
		end
	end
end

class Blog_Post
	def initialize
		@time_created = Time.now
		puts "Name your post:"
		@title = gets.chomp
		puts "Fill in your content:"
		@content = gets.chomp
	end
	
	def edit_content
		puts "New title"
		@title = gets.chomp
		
		puts "New text"
		@content = gets.chomp
	end
end

chrystals_blog = My_Blog.new
post1 = chrystals_blog.create_post
all_posts = chrystals_blog.collect_posts
puts chrystals_blog.inspect
chrystals_blog.publish(all_posts)