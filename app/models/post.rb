class Post < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :categories, :dependent => :destroy
  has_and_belongs_to_many :tags, :dependent => :destroy
  has_and_belongs_to_many :comments, :dependent => :destroy
end
