class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: ["Fiction", "Non-Fiction"]

    validate :title_case

    def title_case
        if title === "True Facts"
            errors.add(:title, "Can't include true facts")
        end
    end 


end
