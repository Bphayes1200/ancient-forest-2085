class Airline < ApplicationRecord
  has_many :flights
  has_many :passengers, through: :flights

  def find_all_passengers
    passengers.where("passengers.age >= 18").distinct
  end
end
