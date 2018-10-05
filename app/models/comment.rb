class Comment < ApplicationRecord
  belongs_to :technology
  belongs_to :user

end
