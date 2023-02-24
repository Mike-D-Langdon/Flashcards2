class Flashcard < ApplicationRecord
  belongs_to :user

  validates :question, presence: true
  validates :answer, presence: true

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
end
