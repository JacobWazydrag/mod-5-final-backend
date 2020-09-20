class Student < ApplicationRecord
    has_many :artists, through: :lessons
    validates :username, uniqueness: true
    has_secure_password
end
