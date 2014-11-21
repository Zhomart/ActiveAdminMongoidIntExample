class Tagging
  include Mongoid::Document
  belongs_to :post
  belongs_to :tag

end
