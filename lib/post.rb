require 'pry'

class Post

  attr_accessor :author, :title

  def initialize(title)
    @title = title

  end

  def author_name=(title)
    if (self.author.nil?)
      self.author = Author.new(name)
    else
      self.author.name = name
    end
  end

  def author_name

    if self.author
      self.author.name
    end
  end
end
