
class Course < ApplicationRecord 
  mount_uploader :image, ImageUploader
  serialize :image, JSON # If you use SQLite, add this line.
  belongs_to :user

  has_many :sections

  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}



end
