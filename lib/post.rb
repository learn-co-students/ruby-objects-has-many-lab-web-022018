class Post

  def initialize(title)
    @title = title
  end

  def author=(author)
    @author = author
  end

  def author
    @author
  end

  def title
    @title
  end

  def author_name
    if @author
      @author.name
    else
      nil
    end
  end

end
