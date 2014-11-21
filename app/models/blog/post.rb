class Blog::Post
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :category
  belongs_to :author, class_name: 'User', inverse_of: nil
  has_many :taggings
  accepts_nested_attributes_for :author
  accepts_nested_attributes_for :taggings
  attr_accessible :author, :position unless Rails::VERSION::MAJOR > 3 && !defined? ProtectedAttributes
  field :published_at, type: DateTime

  field :title, type: String
  field :body, type: String
  field :position, type: Integer
  field :starred, type: Mongoid::Boolean
  field :foo_id, type: Integer
end
