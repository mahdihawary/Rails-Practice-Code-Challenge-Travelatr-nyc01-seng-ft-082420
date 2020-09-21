class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers , through: :posts

    def top_five
        total = self.bloggers.map {|blogger| blogger.age}.sum
    end

    def average_age
        total = self.bloggers.uniq.map {|blogger| blogger.age}.sum
        average = total / self.bloggers.uniq.count
    end

    def featured_post
        max = self.posts.map {|post| post.likes}.max
        self.posts.find {|post| post.likes == max}
    end

end
