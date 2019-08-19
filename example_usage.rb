# frozen_string_literal: true

require_relative './datamapper_setup.rb'

new_user = User.create(
  first_name: 'Zaphod',
  last_name: 'Beeblebrox',
  date_of_birth: Date.new(1979, 10, 12),
  email: 'hoopyfrood42@betelgeuse.gal',
  password: 'P4nG4lacticG4rgleBl4ster'
)

puts new_user.name
puts new_user.login('P4nG4lacticG4rgleBl4ster')
puts new_user.last_login
