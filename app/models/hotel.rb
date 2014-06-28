class Hotel < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true, length: { maximum:300}
  validates :photo, presence: true
  validates :star_rating, presence: true, numericality:true, inclusion: { in:0..10, message: "%{value} is not included in 0..10" }
  validates :price_for_room, numericality: { only_integer:true, greater_than_or_equal_to: 0 }

  mount_uploader :photo, PhotoUploader
end
