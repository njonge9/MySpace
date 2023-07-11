class Post < ApplicationRecord
    validates :title, uniqueness: true, presence: true, length: { maximum:100, minimum: 5}
    validates :body, presence: true, length: { maximum:200, minimum:10}
    has_many :comments, dependent: :destroy
    belongs_to :user
end
