require 'json'
require 'open-uri'
require 'faker'


json_url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredient_list = open(json_url).read
ingredients = JSON.parse(ingredient_list)
ingredients["drinks"].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end


50.times { Cocktail.create(name:Faker::Beer.name) }

