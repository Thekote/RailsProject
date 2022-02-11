# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create name: "user1", age: 10, bio: "nice bio"
User.create name: "user2", age: 35, bio: "nice bio"
User.create name: "user3", age: 26, bio: "nice bio"

Contact.create name: "contact1", birthday: "10/05/1995", user_id: 3
Contact.create name: "contact2", birthday: "10/05/1995", user_id: 2
Contact.create name: "contact3", birthday: "10/05/1995", user_id: 1
Contact.create name: "contact4", birthday: "10/05/1995", user_id: 1

Phone.create number: "1234567890", label: "home", is_default: true, contact_id: 1
Phone.create number: "0987654321", label: "home", is_default: false, contact_id: 2
Phone.create number: "1237896540", label: "home", is_default: false, contact_id: 3
Phone.create number: "1237896578", label: "home", is_default: false, contact_id: 1

