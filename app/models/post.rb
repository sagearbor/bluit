class Post < ActiveRecord::Base
  #validates :title, {length: {maxiumu: 255} }
  validates :title, length: {maximum: 255}
end
