class Teacher < ApplicationRecord 
    validates :name,  presence: true
    validates :email, presence: true, uniqueness: true
    validates :age, presence: true , numericality: { in: 20..65 }
end
