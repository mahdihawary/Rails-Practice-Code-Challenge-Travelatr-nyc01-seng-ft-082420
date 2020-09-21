class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers , through: :posts

    def top_five
        self.bloggers.order('posts desc').limit(5)
        
    end

    def average_age

    end

end
