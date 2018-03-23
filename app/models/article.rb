class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3, maximum: 200}
  validates :description, presence: true, length: { minimum: 10, maximum: 25000}
end
