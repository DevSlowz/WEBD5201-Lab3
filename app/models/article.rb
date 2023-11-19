class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  def self.public_count
    count
  end

  def archived?
    status == 'archived'
  end
end
