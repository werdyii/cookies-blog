class Coment < ActiveRecord::Base
  belongs_to :post
  validates :author, :coment, :email, :post_id, :presence => true
  attr_accessible :author, :coment, :email, :post_id
end
