class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    
    def leave_review(user, star_rating, comment)
        user = User.id
    end

    def print_all_reviews
        self.reviews.each do |review|
            puts "Review for #{self.name} by #{user.id}: #{star_rating}. #{comment}"
        end
    end

    def average_rating
        average = self.reviews.sum / self.reviews.count
        average.to_f
    end
end