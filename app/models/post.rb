class Post < ActiveRecord::Base
  validates :title, length: { maximum: 255 }
end
