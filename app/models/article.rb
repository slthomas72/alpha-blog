class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimium: 3, maximum: 50}
  validates :description, presence: true, length: { minimum: 10, maximum: 300}
end
