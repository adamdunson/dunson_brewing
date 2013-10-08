class Post < ActiveRecord::Base
  belongs_to :author, :class_name => 'User'
  paginates_per 10
end
