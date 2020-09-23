class Post
  attr_accessor :post, :author, :title

  @@all = [ ]
  
  def initialize(title)
    @title = title
    @author = author
    @@all << self
  end
  
  def author_name
    if author
      self.author.name
    else nil
    end
  end
  
  def self.all
    @@all
  end
  
  
end