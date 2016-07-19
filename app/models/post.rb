class Post < ActiveRecord::Base
  belongs_to :category

  validates :title, length: { maximum: 255 }, presence: true
end
