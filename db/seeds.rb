# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "Grocery", description: "Grocery", sku: "AAAAAAAA", supplier_name: "Ash", color: "Red", size: "S", unit: 6)
Product.create(name: "Laptop", description: "Visit children's home: perform duties",  sku: "AAAAAAAA", supplier_name: "Sun Pa", color: "White", size: "S", unit: 5)
Product.create(name: "AC", description: "children's home: perform duties",  sku: "AAAAAAAA", supplier_name: "Agi J", color: "Yellow", size: "S", unit: 4)
Product.create(name: "Fashion", description: "gsaah", in_stock: false)
Product.create(name: "Cloths", description: "perform duties",  sku: "AAAAAAAA", supplier_name: "Suppl ABC", color: "Blue", size: "S", unit: 2)
Product.create(name: "Utensils", description: "children's",  sku: "AAAAAAAA", supplier_name: "Suppl X", color: "Green", size: "M", unit: 10)
Product.create(name: "Computer", description: "Visit children's home: perform duties",  sku: "HHHHH", supplier_name: "Suppl Y", color: "Red", size: "M", unit: 3)
Product.create(name: "Headphone", description: "perform duties",  sku: "TTTTTTTTTTT", supplier_name: "Suppl N", color: "Maroon", size: "S", unit: 20)
Product.create(name: "Mobile", description: "Visit perform duties",  sku: "TTTYYYY", supplier_name: "Suppl J", color: "Blue", size: "L", unit: 2)
