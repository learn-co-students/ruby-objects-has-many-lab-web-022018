require_relative 'post'

class Author

  @@post_count = 0
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    @@post_count
  end
end
