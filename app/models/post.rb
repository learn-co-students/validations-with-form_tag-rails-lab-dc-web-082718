class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 100}, allow_blank: true
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
end
