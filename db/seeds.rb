# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ['Animais', 'Esportes', 'Para sua Casa', 'Músicas', 'Bebês', 'Moda']

categories.each do |category|
    Category.find_or_create_by(description: category)
end

Admin.create!(name: 'Admin', email: "admin@admin.com", password: "123456", password_confirmation: "123456", role: 0)

Member.create!(name: 'Member', email: "member@member.com", password: "123456", password_confirmation: "123456")