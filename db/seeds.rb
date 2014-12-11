# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

comments = Comment.create([{ body: 'Are you done yet' }, { body: 'Are you done yet?' }])
post = Post.create(title: 'Hello World!', body: 'Yes, you!')

comments.each do |comment|
  post.comments << comment
end
