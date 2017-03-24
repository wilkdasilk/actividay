# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Activity.delete_all

Activity.create!(
                title: "Read an article about something you are interested in.",
                description: "Articles cover all sorts of interesting, informative, and challenging subjects. They are a great way to find out new and exciting things, or build a deeper understanding of a subject. Once you've read an article, think about what you learned, and what parts of the article you would recommend to someone else. ALso, you might think about the things that challenged your perspective.",
                example: "There are many periodicals that specialize in specfic subject matter. Try one you've heard of, or check and see if they offer anything on the internet. Popular Science, Cooks Illustrated, Rock & Ice, there are dozens!"
                 )
Activity.create!(
                title: "Go for a walk or hike in your area.",
                description: "Take some time and plan a route through some areas you haven't visited before. Getting outside and moving is a great way to take a break, and experience some new and interesting things.",
                example: "Check your local area for pedestrian walkways or greenways. State and regional parks will also be great places to look for treks."
                )
Activity.create!(
                title: "Cook a new dish.",
                description: "Go out and find a recipe tht looks interesting to you. Read the recipe over and make sure you have enough time and the correct ingredients. You be the judge of how involved it is!",
                example: "When was the last time you flipped a flap-jack? Chopped some celery? baked bread? Creating something with your own hands can be rewarding, and the results delicious!"
                )
