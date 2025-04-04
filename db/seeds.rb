#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Category.destroy_all
Collectible.destroy_all

# Creating my categories
categories = ['Jerseys', "Signed Memorabilia", "Equipment", "Trading Cards"]
categories.each do |category_name|
  Category.create!(name:category_name)
end

# Creating my 10 products
Collectible.create(
  name: "Basketball",
  description: "Red-River branded indoor size 7 Basketball, perfect for any hooper!",
  price: 34.99,
  stock_quantity: 25,
  category: Category.find_by(name: 'Equipment')
) 

Collectible.create(
  name: "Baseball",
  description: "Red-River branded recreation baseball, perfect for any slugger!",
  price: 5.99,
  stock_quantity: 15,
  category: Category.find_by(name: 'Equipment')
) 

Collectible.create(
  name: "Cade Cunningham Swing-man Jersey",
  description: "Home jersey for Cade Cunningham, star point-guard for the Detroit Pistons.",
  price: 149.99,
  stock_quantity: 5,
  category: Category.find_by(name: 'Jerseys')
) 

Collectible.create(
  name: "Patrick Mahomes Jersey",
  description: "Home jersey for Patrick Mahomes, star quarter-back for the Kansas City Chiefs.",
  price: 149.99,
  stock_quantity: 8,
  category: Category.find_by(name: 'Jerseys')
) 

Collectible.create(
  name: "Shohei Ohtani Jersey",
  description: "Home jersey for Shohei Ohtani, star pitcher and hitter for the Los Angeles Dodgers.",
  price: 34.99,
  stock_quantity: 25,
  category: Category.find_by(name: 'Jerseys')
) 

Collectible.create(
  name: "Signed Babe Ruth Baseball",
  description: "Rare and authentic signed Babe Ruth autographed baseball.",
  price: 5000.99,
  stock_quantity: 1,
  category: Category.find_by(name: 'Signed Memorabilia')
) 

Collectible.create(
  name: "Signed Wayne Gretzky Hockey Puck",
  description: "Rare and authentic signed Wayne Gretzky autographed hockey puck.",
  price: 2000.99,
  stock_quantity: 1,
  category: Category.find_by(name: 'Signed Memorabilia')
) 

Collectible.create(
  name: "Tiger Woods Rookie Card",
  description: "Re-print of Tiger Woods' rookie trading card.",
  price: 13.99,
  stock_quantity: 14,
  category: Category.find_by(name: 'Trading Cards')
) 

Collectible.create(
  name: "Hakeem Olajuwon Rookie Card",
  description: "Re-print of Hakeem Olajuwon rookie trading card.",
  price: 13.99,
  stock_quantity: 6,
  category: Category.find_by(name: 'Trading Cards')
) 

Collectible.create(
  name: "Alexander Ovechkin Rookie Card",
  description: "Re-print of Alexander Ovechkin rookie trading card.",
  price: 13.99,
  stock_quantity: 19,
  category: Category.find_by(name: 'Trading Cards')
)