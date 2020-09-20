class Artist < ApplicationRecord
    has_many :students, through: :lessons
    validates :username, uniqueness: true
    has_secure_password
end
