class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    
    def leave_review(user, star_rating, comment)
        # user = Users.find_or_create_
        Review.create(star_rating: star_rating, comment: comment,product_id: self.id, user_id: user.id)
    end

    def print_all_reviews
        reviews.each do |review|
            # puts "Review for #{self.name} by #{users.name}: #{star_rating}. #{comment}"
            puts "Review for #{review.product.name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
        end
    end

    def average_rating
        average = self.reviews.sum / self.reviews.count
        average.to_f
    end
end