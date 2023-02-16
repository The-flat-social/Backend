puts "Creating seeds..."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
num_of_likes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
#num_of_likes = {1..20}.to_a
User.create(name: "Reese", email: "reese@example.com", password: "abc123", username: "Reese's Pieces", followers: num_of_likes.sample)

User.all.sample.id
Post.create(description: "Testing")
User.all.sample.id
Post.all.sample.id
Comment.create(description: "This is a test comment", likes: num_of_likes.sample, user_id: User.all.sample.id, post_id: Post.all.sample.id)
puts "Seeding completed!"