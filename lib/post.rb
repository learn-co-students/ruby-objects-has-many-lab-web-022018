class Post

  attr_reader :title
  attr_accessor :author

  def initialize(title)
    @title = title
    @author = nil
  end

  def author_name
    if @author != nil
      self.author.name
    end
  end
end
