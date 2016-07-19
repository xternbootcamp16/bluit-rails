class Category < ActiveRecord::Base
  validates :name, length: { maximum: 20 }, presence: true
  validates :title, length: { maximum: 100 }
  validates :description, length: { maximum: 500 }
  validates :sidebar, length: { maximum: 5120 }
  validates :submission_text, length: { maximum: 1024 }
end
