class Contact < ApplicationRecord
    validates :name,presence: true, length: {maximum: 50}
    validates :age, presence: true
    validates :phone, presence: true

    belongs_to :user
     
end
