require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :ingredients}
    it {should validate_presence_of :instruction}
  end

  it "has a deafult image" do
    recipe = Recipe.create(
      name: 'Pizza',
      ingredients: 'Tomato Sauce, Yeast, Flour, Sausge',
      instruction: 'Just make it yummy!'
    )

    expect(recipe).to have_attributes(
      name: 'Pizza',
      ingredients: 'Tomato Sauce, Yeast, Flour, Sausge',
      instruction: 'Just make it yummy!',
      image: 'https://cdn.pixabay.com/photo/2014/06/11/17/00/cook-366875__340.jpg'
    )
  end
end
