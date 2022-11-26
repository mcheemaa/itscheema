# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cheema = User.create!(
  email: 'mcheema@fandm.edu',
  first_name: 'Muhammad',
  last_name: 'Cheema'
)

Project.create!(
  [
    {
      title: "Cheema's Web",
      description: 'Personal Website',
      user: cheema,
      image_url: 'https://github.com/mcheemaa/'
    }
  ]
)
