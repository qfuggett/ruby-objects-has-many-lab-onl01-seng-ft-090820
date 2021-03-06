class Author
  attr_accessor :name
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = [ ]
  end
  
  
  def posts
    Post.all.select {|posts| posts.author == self}    
    #referring to the class variable @@all in the Post class
  end
  
  
  def add_post(posts)
    self.posts << posts
    posts.author = self        #associates song with artist
    @@post_count += 1 
  end
  
   def add_post_by_title(title)
    posts = Post.new(title)
    add_post(posts)
    @@post_count += 1
  end
  
  
  def self.post_count
    @@post_count
  end
  
end