# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "creating Users"
User.create!([
  {
    email: "alice@example.com",
    password: "password1", # Use plain password here for seeding
    password_confirmation: "password1", # Required by Devise in the User model
    first_name: "Alice",
    last_name: "Smith",
    username: "alice123",
    avatar: "app/assets/images/User1.jpg",
    experience_level: "Intermediate",
    days_availability: ["Monday", "Wednesday", "Friday"],
    time_availability: "Evenings",
    about_me: "I am a passionate developer with 3 years of experience in web development."
  },
  {
    email: "bob@example.com",
    password: "password2",
    password_confirmation: "password2",
    first_name: "Bob",
    last_name: "Johnson",
    username: "bobj",
    avatar: "app/assets/images/User2.jpg",
    experience_level: "Beginner",
    days_availability: ["Saturday", "Sunday"],
    time_availability: "Mornings",
    about_me: "Just started learning programming and excited to learn more!"
  },
  {
    email: "carol@example.com",
    password: "password3",
    password_confirmation: "password3",
    first_name: "Carol",
    last_name: "Williams",
    username: "carolw",
    avatar: "app/assets/images/User3.jpg",
    experience_level: "Advanced",
    days_availability: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
    time_availability: "Afternoons",
    about_me: "Experienced software engineer with a love for open-source projects."
  },
  {
    email: "dave@example.com",
    password: "password4",
    password_confirmation: "password4",
    first_name: "Dave",
    last_name: "Brown",
    username: "daveb",
    avatar: "app/assets/images/User4.jpg",
    experience_level: "Intermediate",
    days_availability: ["Monday", "Wednesday", "Friday"],
    time_availability: "Mornings",
    about_me: "I enjoy working on backend systems and API development."
  },
  {
    email: "eve@example.com",
    password: "password5",
    password_confirmation: "password5",
    first_name: "Eve",
    last_name: "Davis",
    username: "eved",
    avatar: "app/assets/images/User5.jpg",
    experience_level: "Beginner",
    days_availability: ["Saturday", "Sunday"],
    time_availability: "Evenings",
    about_me: "New to programming, looking to build my first web app."
  }
])
