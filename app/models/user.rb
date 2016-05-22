class User < ActiveRecord::Base
    validates :first_name, :last_name, :age, presence: true
    validates :age, numericality: true
    has_many :cars
end
