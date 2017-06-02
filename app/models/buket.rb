class Buket < ApplicationRecord
  #validates flower_num: {greater_than_or_equal_to: 3}
  validates :price, numericality: {greater_than: 0.1}
  validates :title, :arrival_date, presence: true
  before_validation :add_arrival_date, on: :create


  def add_arrival_date
    self.arrival_date = 3.days.since
  end



end
