require 'pry'

class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(title)
    p = Post.new(title)
    self.add_post(p)
    p
  end

  def self.post_count

end
