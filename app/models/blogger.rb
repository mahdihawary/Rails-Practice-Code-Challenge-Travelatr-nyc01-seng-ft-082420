class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness:true
    validates :age, numericality:{greater_than:0}
    validates :bio, length:{minimum:30}
    
    def most_liked_post
        max = self.posts.map {|p| p.likes}.max
        most = self.posts.find {|p| p.likes == max}
        return most
    end

    def total_likes
        self.posts.map{|p| p.likes}.sum
    end

end
