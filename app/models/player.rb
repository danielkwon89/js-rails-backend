class Player < ApplicationRecord
    has_many :scores, dependent: :destroy
    validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 24}, format: {with: /\A[a-zA-Z0-9]+\z/}

end
