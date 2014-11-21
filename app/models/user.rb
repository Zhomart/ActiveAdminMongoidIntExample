class User
  include Mongoid::Document
  has_many :posts, class_name: 'Post', inverse_of: 'author'
  def display_name
    "#{first_name} #{last_name}"
  end

  field :first_name, type: String
  field :last_name, type: String
  field :username, type: String
  field :age, type: Integer
end
