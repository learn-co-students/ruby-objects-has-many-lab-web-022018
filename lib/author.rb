class Author

  attr_accessor :name, :genre, :posts

  @@all_posts=[]
  @@post_count
  def initialize(name)
    @name=name
    @genre
    @posts=[]
  end
  def add_post(post)
    post.author=self
    @posts << post
    @@all_posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author=self
    @posts << post
    @@all_posts << post
  end

  def self.post_count
    @@post_count = @@all_posts.size
    @@post_count
  end
end
