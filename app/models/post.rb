class Post < ActiveRecord::Base
  #validates :title, {length: {maxiumu: 255} }
  validates :title, length: {maximum: 255}, presence: true
  #Map a number to text with enum
  #enum :post_type: [:link, :text]
  belongs_to :category
  default_scope { order(created_at: :desc) }
end
