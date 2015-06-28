class Review < ActiveRecord::Base
  validates :score, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :user_id, :uniqueness => { :scope => :product_id,
    :message => "Users may only write one review per product." }
  belongs_to :user
  belongs_to :shop
end
