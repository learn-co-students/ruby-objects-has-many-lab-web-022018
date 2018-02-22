require_relative "../lib/post.rb"

class Author
  
  attr_accessor :name, :posts
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def all
    @posts
  end
  
  def add_post(post_)
    self.all << post_
    post_.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    post_ = Post.new(title)
    self.add_post(post_)
  end
  
  def self.post_count
    @@post_count
  end
end