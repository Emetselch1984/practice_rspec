class Blog < ApplicationRecord
  validates :title, presence: true,length: { in: 1..300 }
  belongs_to :user
end
