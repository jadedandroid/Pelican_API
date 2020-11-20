class Publication < ApplicationRecord
  belongs_to :author
  belongs_to :genre
end
