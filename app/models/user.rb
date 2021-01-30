class User < ApplicationRecord
  validates :name, presence: true,length: { in: 1..100 }
  validates :email, presence: true,uniqueness: true,length: { in: 5..100 },
            format: { with: /\A[\w.-@]+\z/,
                      message: "英文字と.-@のみが使えます" }
end
