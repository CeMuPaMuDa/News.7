# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
admin_email = 'admin@example.com'
User.create!  email: admin_email,
              password: admin_email,
              name: 'Администратор'

hash_users = Array.new(25) do
  email = FFaker::Internet.safe_email
  {
    name: FFaker::Internet.user_name[0..15],
    email: email,
    password: email,
  }
end

users = User.create! hash_users

hash_posts = Array.new(120) do
  {
    title: FFaker::BaconIpsum.phrase,
    content: FFaker::BaconIpsum.paragraphs,
    user: users.sample
  }
end

posts = Post.create! hash_posts
