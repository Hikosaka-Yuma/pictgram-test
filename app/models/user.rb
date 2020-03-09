class User < ApplicationRecord
validates :name, presence: true, length: {maximum: 15}
validates :email, presence: true, uniqueness: true
validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

validates :password, presence: true, uniqueness: true
#パスワードの文字数のバリデーション
#validates :password, length: {maximum:32, minimum:8,}
#パスワード文字数字を混合させるバリデーション
#validates :passoword, format: {with: /^[A-Za-z0-9]+S/}

has_secure_password
end
