class Recipe < ApplicationRecord
  before_save :defualt_image

  validates :name, presence: true
  validates :ingredients, presence: true
  validates :instruction, presence: true

  def defualt_image
    if self.image.nil?
      self.image = 'https://cdn.pixabay.com/photo/2014/06/11/17/00/cook-366875__340.jpg'
    else
      self.image
    end
  end
end
