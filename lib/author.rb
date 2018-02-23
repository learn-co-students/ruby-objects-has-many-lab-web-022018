require 'pry'

class Author

  attr_accessor :name, :post, :title

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
    @title = []
  end

  def posts
    @posts
  end


  def add_post(post)
    post.author = self
    self.posts << post
    @@post_count +=1
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    @@post_count
  end

end
