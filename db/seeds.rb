#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Creating my categories
categories = ['Jerseys', "Signed Memorabilia", "Equipment", "Trading Cards"]
categories.each do |category_name|
  Category.create(name:category_name)
end