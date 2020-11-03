# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# User.destroy_all
# Event.destroy_all
# Attendance.destroy_all
#
# 15.times do |x|
#   f_name=Faker::Name.first_name
#   User.create(description: Faker::Quote.famous_last_words, first_name: f_name, last_name: Faker::Name.last_name, email: f_name + "@yopmail.com", encrypted_password: 'azerty')
#     puts "L'utilisateur #{f_name} a bien été créé"
# end
#
# 25.times do |x|
#     Event.create(start_date: rand(Time.parse("2020-11-02 20:00:00")..Time.parse("2022-01-01 00:00:00")), duration: rand(5..100)*5, description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false), location: Faker::Address.city, price: rand(1..1000), title: Faker::Book.title, admin: User.all.sample)
#   puts "L'évenement nb #{x + 1} a été créé"
# end
#
# 20.times do |x|
#   Attendance.create(user: User.all.sample, event: Event.all.sample)
#   puts "Le participant nb #{x + 1} a été créé"
# end

User.destroy_all
Event.destroy_all
Attendance.destroy_all

15.times do |x|
  f_name = Faker::Name.first_name
  User.create(description: Faker::Quote.famous_last_words, first_name: f_name, last_name: Faker::Name.last_name, email: f_name + "@yopmail.com", password: 'azerty')
  puts "L'utilisateur n° #{x + 1} a bien été créé"
end

25.times do |x|
    Event.create(start_date: rand(Time.parse("2020-11-10 20:40:34")..Time.parse("2022-01-01 00:00:00")), duration: rand(5..100)*5, description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false), location: Faker::Address.city, price: rand(1..1000), title: Faker::Book.title, admin: User.all.sample)
  puts "L'évènement n°#{x + 1} a été créé"
end

20.times do |x|
  Attendance.create(user: User.all.sample, event: Event.all.sample)
  puts "Le participant n°#{x + 1} a été créé"
end
