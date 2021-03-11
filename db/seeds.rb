# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed some Blog posts
Content.create(content_type: 'Blog Post', title: 'Adventures Downunder', content_review_notes: 'Travel to a faroff place like New Zealand...')
Content.create(content_type: 'Blog Post', title: 'A Pilots Dream', content_review_notes: 'Travel window to NZ happening soon')
Content.create(content_type: 'Blog Post', title: 'Gone Fishing', content_review_notes: 'Fishing in New Zealand...')

Content.create(content_type: 'Movie', title: 'Avengers Endgame', content_review_notes: 'Another Avengers movie...')
Content.create(content_type: 'Movie', title: 'Dune', content_review_notes: 'A classic')
Content.create(content_type: 'Movie', title: 'The Greatest Showman', content_review_notes: 'Masterpiece...')

Content.create(content_type: 'Recipe', title: 'Butter Chicken', content_review_notes: 'Delicious...')
Content.create(content_type: 'Recipe', title: 'Beef Lasagne', content_review_notes: 'Filling...')
Content.create(content_type: 'Recipe', title: 'Checken Laksa', content_review_notes: 'Spicy...')
