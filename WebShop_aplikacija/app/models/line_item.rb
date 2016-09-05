class LineItem < ActiveRecord::Base
  belongs_to :color
  belongs_to :cart
  belongs_to :product
end
