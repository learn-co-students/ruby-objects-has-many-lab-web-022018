class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    author = nil
    if self.author
      author = self.author.name

    end
    author
  end

end
