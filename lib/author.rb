class Author
  attr_accessor :name
  @@all = []
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  def posts
    @posts
  end
  def add_post(post)
    post.author = self
    @posts << post
  end
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
  end
  def self.post_count
    @@all.each do |author|
      @@post_count += author.posts.size
    end
    @@post_count
    end


end
