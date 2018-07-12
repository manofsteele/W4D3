# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create(birth_date: Date.new(01-01-2001), color: "brown", name: "Mao", sex: "M", description: "Old and lazy")
cat2 = Cat.create(birth_date: Date.new(01-01-2002), color: "black", name: "Bao", sex: "F", description: "Old and cute")
cat3 = Cat.create(birth_date: Date.new(01-01-2003), color: "orange", name: "Pow", sex: "F", description: "Old and grumpy")
cat4 = Cat.create(birth_date: Date.new(01-01-2004), color: "white", name: "Cow", sex: "M", description: "Old and fat")

