# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Country.create(country_name: 'IN')
Country.create(country_name: 'Canada')
Country.create(country_name: 'USA')

State.create(state_name: 'MH')
State.create(state_name: 'British Culombia')
State.create(state_name: 'Alberta')
State.create(state_name: 'California')
State.create(state_name: 'New-York')


City.create(city_name: 'Nagpur')
City.create(city_name: 'Vancouver')
City.create(city_name: 'Edmonton')
City.create(city_name: 'Calgary')
City.create(city_name: 'Los Angeles')
City.create(city_name: 'Santa Barbara')
City.create(city_name: 'New York')

City.create(city_name: 'Albany')
Company.create(name: 'Company 1', country: Country.last, state: State.last, city: City.last)
Company.create(name: 'Company 1', country: Country.second, state: State.second, city: City.second)
Company.create(name: 'Company 1', country: Country.third, state: State.third, city: City.third)
# %w[east west north south].each do |name|
#   Region.create(region_name: name)
# end
User.create(email: "admin@abc.com", user_role: "admin",password: "1234567", company_id: Company.first.id)
User.create(email: "manager@def.com", user_role: "manager",password: "1234567", company_id: Company.second.id)
User.create(email: "user@def.com", user_role: "normal_user",password: "1234567", company_id: Company.second.id)
User.create(email: "manager@ghi.com", user_role: "manager",password: "1234567", company_id: Company.third.id)
User.create(email: "user@ghi.com", user_role: "normal_user",password: "1234567", company_id: Company.third.id)
