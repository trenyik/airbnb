class Property < ApplicationRecord
    has_one_attached :image
    has_many :books
    belongs_to :user
    has_many :reviews, through: :books
    has_many :users, through: :books

end
