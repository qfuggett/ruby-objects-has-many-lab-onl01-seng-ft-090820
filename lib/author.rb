class Author
  attr_accessor :name
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = [ ]
  end
  
  
  def add_post(actual_post)
    self.actual_post << actual_post
    actual_post.author = self        #associates song with artist
    @@post_count += 1 
  end
  
  
  def posts
    Post.all.select {|posts| actual_post.author == self}
  end
  
  
  def add_post_by_title(title)
    actual_post = Post.new(title)
    @posts << actual_post
    actual_post.author = self
    @@post_count += 1
  end
  
  
  def self.post_count
    @@post_count
  end
  
end