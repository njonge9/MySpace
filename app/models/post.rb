class Post < ApplicationRecord
    validates :title, uniqueness: true, presence: true, length: { maximum:50, minimum: 5}
    validates :body, presence: true, length: { maximum:200, minimum:10}
end