# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seeding Languages:"

languages = [
  { name: "Unset"},
  { name: "C"},
  { name: "Clojure"},
  { name: "CSS"},
  { name: "C++"},
  { name: "C#"},
  { name: "HTML5"},
  { name: "Java"},
  { name: "JavaScript"},
  { name: "Pascal"},
  { name: "PHP"},
  { name: "Python"},
  { name: "Ruby"},
  { name: "SQL"},
  { name: "TypeScript"},
]

languages.each do |language|
  Language.find_or_create_by(language)
  puts "Created language: #{language[:name]}"
end

puts "Language seeding complete."
