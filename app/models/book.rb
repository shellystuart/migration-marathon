class Book < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :checkouts
  has_many :readers, through: :checkouts

  validates :title, presence: true
  validates :author, presence: true
  validates :rating, numericality: true, inclusion: { in: (0..100) }, allow_nil: true
end
