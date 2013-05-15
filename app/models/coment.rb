class Coment < ActiveRecord::Base
  has_ancestry
  belongs_to :post
  validates :author, :coment, :email, :post_id, :presence => true
  attr_accessible :author, :coment, :email, :post_id, :parent_id
end
