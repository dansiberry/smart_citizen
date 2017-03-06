class PostComment < ApplicationRecord
  belongs_to :comment
  belongs_to :post
end
