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

    recipe2 = Recipe.create(
      name: 'Chop Suey',
      ingredients: 'Noodles, Vegetables, Meat, Oil',
      instruction: 'Lu, lus!',
      image: 'https://kirbiecravings.com/wp-content/uploads/2020/04/chop-suey-5.jpg'
    )

    expect(recipe).to have_attributes(
      name: 'Pizza',
      ingredients: 'Tomato Sauce, Yeast, Flour, Sausge',
      instruction: 'Just make it yummy!',
      image: 'https://cdn.pixabay.com/photo/2014/06/11/17/00/cook-366875__340.jpg'
    )

    expect(recipe2).to have_attributes(
      name: 'Chop Suey',
      ingredients: 'Noodles, Vegetables, Meat, Oil',
      instruction: 'Lu, lus!',
      image: 'https://kirbiecravings.com/wp-content/uploads/2020/04/chop-suey-5.jpg'
    )
  end
end
