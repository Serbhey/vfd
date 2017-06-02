class Flower < ApplicationRecord
  validates :name, presence: {message: "Цветок должен иметь имя"}
  before_create :set_shelf_life

  def set_shelf_life
    self.shelf_life = 4.days.since
  end
end
