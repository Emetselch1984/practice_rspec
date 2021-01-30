class Blog < ApplicationRecord
  validates :title, presence: true,length: { in: 1..300 }

end
