# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Project.create(name: "Toyota", start_date: Date.today, end_date: Date.today + 10.days, status: "In Progress", active: true)

p2 = Project.create(name: "Testa", start_date: Date.today - 10.days, end_date: Date.today - 1.days, status: "Completed", active: true)

p3 = Project.create(name: "XYZ", start_date: Date.today + 10.days, status: "Analysis", active: true)

User.create(name: "Giacomo Martz", email: "giacomo@example.com", age: 37, nickname: "Giac", active: true, project_id: p1.id, password: 'password', password_confirmation: 'password')

User.create(name: "Diamoto Giagi", email: "diamoto@example.com", age: 32, nickname: "Diac", active: true, project_id: p2.id, password: 'password', password_confirmation: 'password')

User.create(name: "Damoto Giang", email: "damoto@example.com", age: 28, nickname: "Damu", active: true, project_id: p3.id, password: 'password', password_confirmation: 'password')

User.create(name: "Shams", email: "shams@example.com", age: 28, nickname: "Shams", active: true, password: 'password', password_confirmation: 'password')
User.create(name: "Zama", email: "zama@example.com", age: 28, nickname: "Zama", active: true, password: 'password', password_confirmation: 'password')