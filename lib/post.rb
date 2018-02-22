class Post
  attr_accessor :title, :author
  
  def author_name
    if self.author
      self.author.name
    else 
      nil
    end
  end
  
  def initialize(title)
    @title = title
  end
end