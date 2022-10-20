class List < ApplicationRecord
  has_one_attached :picture
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end
