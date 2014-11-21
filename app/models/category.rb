class Category
  include Mongoid::Document
  has_many :posts
  accepts_nested_attributes_for :posts

  field :name, type: String
  field :description, type: String
end
