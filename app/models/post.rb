class Post < ApplicationRecord
    belongs_to :destination
    belongs_to :blogger
    validates :title, presence:true
    validates :content, length:{minimum:100}
    def give_like
        self.likes += 1
    end

end
