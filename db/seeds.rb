# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

User.create!(
                name: "Auston",
                born_on: Date.new(1992,4,16),
                goals: "Do things",
                zip: "92612",
                email: "auston@me.com",
                password: "yeahyeah",
                password_confirmation: "yeahyeah"
)
User.create!(
                name: "John",
                born_on: Date.new(1980,1,01),
                goals: "Smile everyday!",
                zip: "92612",
                email: "john@me.com",
                password: "nonono",
                password_confirmation: "nonono"
)
User.create!(
                name: "Sammy Sam",
                born_on: Date.new(1989,2,14),
                goals: "Learn to cook!",
                zip: "94104",
                email: "sammysam@me.com",
                password: "maybe???",
                password_confirmation: "maybe???"
)


Activity.delete_all

Activity.create!(title: "Check out the community calendar.",
description: "Look at your town's website or stop by city hall to find a list of events going on in the community, many of which are free. You'll often be surprised at how many interesting (and free) activities are going on right now in your area.")

Activity.create!(title: "Visit your local library.",
description: "Not only is a library a warehouse of books, most libraries also have extensive CD and DVD collections you can check out. Many libraries also have 'story time' for young children, film nights, book clubs, concerts, author readings or lectures, and many other events that you may be unaware of - completely for free. Stop in and check out what they have to offer.")

Activity.create!(title: "Get involved in community sports.",
description: "Many towns have community sports fields where both youth and adult sports leagues and activities are regularly going on throughout the weekend. Stop by, watch a game or two, and if something intrigues you, look into joining either as a participant or as a volunteer.")

Activity.create!(title: "Check out some podcasts.",
description: "Podcasts are wonderful: top-notch audio programs available to you for free. Give them a shot - it's easy to do using iTunes. Just visit the 'Podcast' section of the iTunes Store and sample a few.")

Activity.create!(title: "Play board games.",
description: "Classic games like Monopoly and Pictionary can be great fun, but there are also classics like Settlers of Catan, Cartagena, Puerto Rico, and especially Ticket to Ride. Just dig through the recesses of your closet, find an old board game you haven't played in ages, and bust it open!")

Activity.create!(title: "Bake a loaf of homemade bread.",
description: "You probably have everything you need to make a loaf of bread in your kitchen right now (except for maybe the yeast). Anyone can do it, and the fresh-baked bread comes out delicious. Here's a detailed visual guide for making a simple loaf with minimal ingredients or complexity.")

Activity.create!(title: "Teach yourself how to juggle.",
description: "All you really need is three balls and a video showing you how to do it. Not only is it a fun activity to learn, it's something that's fun to bust out as a party trick on occasion.")

Activity.create!(title: "Learn how to change your car's oil.",
description: "If your car's due for an oil change, just bring home the oil and oil filter you need and teach yourself how to do it on your own. All you really need is an old pan to catch the used oil and a funnel to refill the oil tank and pour the old oil back into the canisters for later disposal. (Make sure you dispose of the old oil according to local laws; most gas and service stations will accept your used motor oil.). Use your car manual as a guide for the procedure and you might just find it's both a lot easier than you thought and a useful skill to have - plus it's cheaper than taking your car to Jiffy-Lube (or wherever you go for oil changes).")

Activity.create!(title: "Meet your neighbors.",
description: "Make an effort to introduce yourself to your neighbors if you don't know them very well. If you meet any interesting people in your neighborhood, invite them over for a cup of coffee and a chat, just to get to know each other better.")

Activity.create!(title: "Clear out your media collection - books, DVDs, CDs, etc.",
description: "Go through your collection, determine which items you'd actually like to keep, and get rid of the rest. You can either sell them at a used media shop or swap them online using services like PaperBackSwap and SwapADVD. In either case, you'll get rid of stuff you don't watch or read or listen to any more in exchange for either some money or new media to enjoy.")

Activity.create!(title: "Have a 'cupboard potluck.'",
description: "Go through your cupboards and find any items that might have slipped to the back over time. Invite some friends to do the same, then get together for a potluck dinner prepared from only these ingredients and whatever else you have on hand.")

Activity.create!(title: "Make a '101 Goals in 1,001 Days' list - then start on some of them.",
description: "A 101 Goals in 1001 Days list is an effective way to codify all the things you'd like to do in one place, so that when you have spare time, you can just turn to the list and do what's next on it.")

Activity.create!(title: "Do a household maintenance walk-through.",
description: "Go through your home and look for any little maintenance tasks that need to be done. Do filters need to be replaced? Are there any burnt-out light bulbs?)
Here's a maintenance checklist that can give you some ideas as to what to look for. It might not be the most fun activity you can think of, but it'll add subtly to your enjoyment of your home when it's done: cleaner air, light bulbs in place, and peace of mind.")

Activity.create!(title: "Start or join a fantasy sports league.",
description: "With baseball season just getting underway, you can go to Yahoo! Sports, CBS Sports, or ESPN and easily start a free fantasy sports league for you and your friends. Even when you're just playing for bragging rights, a fantasy league can spur competitive banter and endless discussion between your friends as the season unfolds.")

Activity.create!(title: "Organize a self-guided walking tour.",
description: "Research the interesting historic and cultural sites in your town, then go on a walking tour of them. Pack a lunch in your backpack and have a picnic on the village green or in the park. You can easily turn this into a full day if you live in a compelling area.")

Activity.create!(title: "Teach yourself how to knit.",
description: "Learning to knit requires two needles, some yarn, a lot of patience, and an instructional video or two.")

Activity.create!(title: "Take some digital photographs.",
description: "Take your digital camera out with you and take pictures of anything you find interesting. Take lots of them, then go home later and see if you've taken anything beautiful and compelling. Great images can lay the groundwork for homemade greeting cards (yep, keep going downwards for more on this), nice desktop wallpaper, screensavers, personalized gifts, or other interesting uses.")

Activity.create!(title: "Share those digital photographs with others.",
description: "Sign up for a free Flickr account, then upload some of your most interesting pictures to share with others. Spend the time to title them appropriately, add interesting captions, and allow them to be used under a Creative Commons Attribution license so your images can be enjoyed by as many people as possible.")

Activity.create!(title: "Start a blog on a topic that interests you.",
description: "You can get a free blog using WordPress or Blogger. Join such a service and start a blog on a topic that interests you. Not only can it be a ton of fun, it also helps you improve your communication skills, reach out to others, and perhaps earn a bit of income down the road as well.")

Activity.create!(title: "Visit a free museum or a zoo (or find out when you might be able to get in for free).",
description: "Many cities and colleges have free educational attractions, such as museums or zoos. Make an effort to enjoy these free attractions.")

Activity.create!(title: "Learn the basics of a new topic.",
description: "Just go to MIT's OpenCourseWare, find a topic you're interested in, download a bunch of MP3s of lectures on the topic, and listen to them while you're doing household chores. Some great suggested starting points: microeconomics, basics of philosophy, western philosophy, and introductory physics.")

Activity.create!(title: "Cook some meals in advance.",
description: "If you already have a bunch of basic food staples on hand, spend some time cooking some meals in advance to store in the freezer. It's easy to prepare casseroles, soups, pasta meals, breakfast burritos, and many other items all at once, then store them in portion-sized containers in the freezer for quick and easy reheating on a busy weekday.")

Activity.create!(title: "Build a basic net-worth calculator for yourself.",
description: "One great way to ensure that you're consistently making financial progress is to build your own net worth calculator. Once you have it set up, updating it is easy, and it can provide a great snapshot of your financial situation as well as show off your progress. Here's a detailed guide to making one with any basic spreadsheet program.")

Activity.create!(title: "Have a quilting bee.",
description: "All you need is a bunch of spare cloth (old shirts will even work, as will old curtains, old sheets, and so forth), some needles, thread, scissors, and some friends. Just get together, cut out squares of interesting cloth, and start sewing. You can stuff the inside with soft excess cloth, like t-shirts and such, instead of buying batting, and you'll create a warm and interesting quilt over time.")

Activity.create!(title: "Practice origami.",
description: "All you need is some scrap paper and a bit of time. Start with the simple things, like cranes and frogs, then you can try harder stuff like an origami iris. A well-made origami piece constructed from interesting paper can be a beautiful decoration.")

Activity.create!(title: "Make a how-to video for YouTube.",
description: "Share your knowledge! All you need is a digital camera that captures video or a smartphone and (optionally) some video editing software. Just create a video to demonstrate how to accomplish something interesting and useful.")

Activity.create!(title: "Do a 'bill reduction.'",
description: "Spend a few hours trimming your monthly expenses. How? Find ways to lower your regular bills. Ask for credit card rate reductions. Think about what monthly bills you can completely eliminate, then do the footwork to get rid of them.")

Activity.create!(title: "Play football/soccer.",
description: "All you need is a ball, some open space, and some friends. Designate whatever is available as goals, then kick the ball around.")

Activity.create!(title: "Make a time capsule.",
description: "Find a small box, and then walk around your house gathering items that represent the reality of your present-day life: A newspaper or magazine, photographs, recent receipts, last week's grocery store list, letters or greeting cards, and so on. You could even include a digital flash drive with photos or a video you and your family make for your 'future selves' to watch. Put it all in the box, tape it up securely, and write a date on the outside saying when you're allowed to open it - say, 10 or 15 years from now.")

Activity.create!(title: "Have a film festival.",
description: "Invite some friends over and ask them each to bring one of their favorite DVDs. Then just settle in with some snacks (whatever you have on hand) and burn a lazy afternoon and evening just watching movies together. It's a ton of fun and it doesn't cost anything at all.")

Activity.create!(title: "Do some networking.",
description: "Spend an afternoon drafting emails to professional contacts, just to see what they're up to and to let them know what you're up to. Set them up to send en masse on Monday morning. While it might sound boring, it can open up countless doors for your career if you do it consistently, and help you build new relationships and friendships - and all it takes is a little bit of spare time.")

Activity.create!(title: "Practice yoga - or try it for the first time.",
description: "All you need is some floor space and a blanket to do most yoga poses. Try out a basic yoga session to see if you like it. It increases flexibility, improves concentration, and holding some of those positions for long periods can be a powerful workout.")

Activity.create!(title: "Try Geocaching.",
description: "Part outdoor adventure, part treasure hunt, Geocaching - hiking in search of hidden 'caches' you can track by their GPS coordinates - is a great activity. If you have a GPS device or a smartphone, you don't need to buy anything else to get started.")

Activity.create!(title: "Do a neighborhood cleanup.",
description: "No need to organize a formal activity. Just walk through the shared spaces in your neighborhood (parks, sidewalks, etc.) with a trash bag and a pair of gloves, and pick up the litter.")

Activity.create!(title: "Build some paper airplanes.",
description: "Design and build a bunch of different paper airplanes, then have a competition in the back yard to see which one flies the best. This is a great way to use up some scrap paper, particularly old newspapers. You can easily turn it into a contest - the winner gets to pick what activity to engage in next, or gets to choose what you're having for supper.")

Activity.create!(title: "Rearrange the furniture in a room.",
description: "It's amazing how much you can refresh a room just by moving the furniture into new positions. Try moving the couch to a different wall, then moving the entertainment center elsewhere. Take your bed and turn it 90 degrees, then move the dressers to match the new configuration. It can completely refresh the look of the room and give you a good workout to boot.")

Activity.create!(title: "Read an entertaining book.",
description: "Look around your house for a fun book to read, perhaps something loaned to you by a friend or something you received as a gift, and curl up and let yourself be sucked into the story.")

Activity.create!(title: "Call a family member or a friend you haven't spoken to in a while.",
description: "Not only is this a chance to catch up with another person who's important to you and firm up your relationship, it can also be a very entertaining and enjoyable way to spend an hour or two.")

Activity.create!(title: "Start a natural collection or an observation notebook.",
description: "In other words, spend some time in nature collecting items of interest (like particular rocks) or making observations of things. Perhaps you'll want to look for birds, or maybe your passion is rocks or feathers. Whatever it is, get your hiking boots on, get out there, and see what you can find. Here's some advice on how to get started.")

Activity.create!(title: "Start a compost bin.",
description: "All you need is a barrel or a large bucket (or, if you live in the country, some open space). Put your vegetable waste, coffee grounds, and eggshells in that bucket; you can add some yard waste such as grass clippings and leaves, too. (Don't put meat, fish, or dairy products in your compost pile.) On occasion, scoop in a bit of dirt from the ground.")

Activity.create!(title: "Have a yard sale.",
description: "Hosting a yard sale or garage sale is a great way to spend a money-free weekend - and a potentially lucrative one at that. Not only does it give you an excuse to clean out unwanted clutter from your home, it's something the whole family can participate in, offering an entire weekend's worth of entertainment and activity (and a nice little wad of money at the end to boot). Yard sales are a great way to turn excess clutter into extra cash, and that’s a win for everyone involved.")

Activity.create!(title: "Learn a foreign language.",
description: "Doubt this can be free? There are a lot of ways to learn a foreign language online, from podcasts that teach language skills, to apps like DuoLingo and Language Zen, to YouTube videos and many other free language learning opportunities. You can often find popular self-taught foreign language courses like Rosetta Stone at your local library, too. Search around for resources for any language that you might want to learn - you'll find tons of materials to help you.")

Activity.create!(title: "Deep-clean the room in your house you spend the most time in.",
description: "One great afternoon project that will provide aesthetic value for years is deep cleaning a single room in your house, ideally the room you're in most often. Getting that room pristine will subtly add to your enjoyment of that room for quite a while. This means going the whole nine yards - moving everything out, scrubbing the walls, thoroughly cleaning the floor, cleaning all of the items in it, and so forth. When you're done, the room will feel fresh and new in a very subtle way.")

Activity.create!(title: "Make some homemade greeting cards.",
description: "Whether you want to make homemade birthday cards, thank-you cards, or Christmas cards, all you really need is some card stock or some cheap blank cards from your local dollar store, plus some photographs (or a desktop printer). You might also want to have some other creative printed materials on hand.")

Activity.create!(title: "Take a nap.",
description: "Seriously. Most people do not get adequate sleep during the week. Why not just kick back and take a snooze for an hour or two? It's the ultimate free energy refresher.")

Activity.create!(title: "Dig up your family tree.",
description: "Take a peek at Genealogy.com or Ancestry.com and see what you can find out about your ancestors. If your family has been in the area for a long time, your local library can help you track down centuries-old birth certificates and other records. And don't forget to ask your oldest living family members what they remember about their own parents, cousins, aunts, uncles, and grandparents.")

Activity.create!(title: "Play 'Calvinball.'",
description: "To play the wonderfully disorderly sport often portrayed in 'Calvin and Hobbes,' all you need is a ball (or a few balls), some number of children, some open space, and a good imagination. Just kick the ball around (or throw it) and make up rules as you go along. With three or more kids, a game of Calvinball can go on for a good hour with everyone having a great time.")

Activity.create!(title: "Do some puzzles.",
description: "You can find a huge number of puzzles online for free, and they're a great way to stretch your mind a bit at the kitchen table.")

Activity.create!(title: "Volunteer your time.",
description: "There are countless volunteer projects out there that need nothing more than your time. A Saturday working for a volunteer cause is a Saturday well spent: You can meet other people in your community while making a positive contribution to society and working your body and your mind for the benefit of others. You may even pick up a new skill, and either way, it will leave you at the end of the day knowing you used your gifts to help out others.")

Activity.create!(title: "Turn on the water sprinkler.",
description: "This is another great way to have family fun with kids. Just run out a hose in the backyard, attach a sprinkler to the end, and turn it on, shooting the water up into the air. Darting back and forth through the cold water on a hot day is a ton of fun for kids - and for parents, too.")

Activity.create!(title: "Try a basic meditation technique.",
description: "Meditation is a spectacular way to push stress out of your life and calm yourself. Knowing how to meditate effectively and doing it regularly can be a major part of your stress management, and it costs nothing. Here's a wonderful basic meditation technique to get you started - there are countless others out there. Try a few and see which ones work well for you.")

Activity.create!(title: "Get involved in an open source programming project.",
description: "If you're a computer programmer, there are few more intellectually stimulating ways to get involved in your passion than to be involved in an open source programming project. One role that almost every project can use is a person who's willing to fix mundane, boring bugs - finding that one line of code that's causing a minor issue and fixing it. Look for a project that's compelling to you and dig in.")

Activity.create!(title: "Teach yourself a card trick.",
description: "Card tricks are a fun way to entertain people in almost any situation. Many tricks rely on knowing a specific pattern, some basic sleight of hand, or a combination of the two. Learning a clever card trick and mastering how it's done can be a great way to spend an afternoon, especially since you can use the skill again and again as a party trick. Here's a great one to learn - it's really clever and can utterly baffle people.")

Activity.create!(title: "Start a workout routine.",
description: "Most basic exercises - push-ups, sit-ups, jogging, and so forth - require no extra equipment at all. Spend some time doing research into fitness and figuring out a basic workout routine that will work for you, then do the basic 'stress tests' you'll need to do to figure out where you're at.")

Activity.create!(title: "Read a 'Great' book.",
description: "Find a book that genuinely challenges both your beliefs and ideas as well as your language skills. Reading a great book is always a good mental workout.")

Activity.create!(title: "Go swimming.",
description: "Almost every town has a community swimming pool, public pond, or some sort of area where residents can swim - lacking that, go to a state park with a public swimming area. Swimming is wonderfully invigorating and often makes me feel very peaceful - best of all, it's something you can often do for free.")

Activity.create!(title: "Get involved with public access television.",
description: "If you've ever wondered what goes into the process of producing a television show, most communities offer the resources for you to do just that. Stop by your local public access station and see what opportunities are available there. You can usually get involved for free in an ongoing program as an extra hand and learn a great deal about the whole process.")

Activity.create!(title: "Blow bubbles.",
description: "Just mix one part liquid dish soap with 15 parts water to make a homemade bubble solution. One quick way to do this is to just mix 1/4 cup dish soap with 3-3/4 cups of water. Use filtered and fairly soft water if you can. Then, take a wire coat hanger, bend and twist it into a small loop or two, and you're ready to go.")

Activity.create!(title: "Start a journal.",
description: "Let's face it, we start to forget some things - especially the little details - as we get older. A journal can be a powerful way to recall the events that happened in your life that made you who you are. Getting in the habit of writing down the events of your day each night is a great way to remember the specifics. Entries on what you're thinking about now can be the basis of powerful memories and reflections in the future. Plus, it can offer a release from the tensions of the day.")

Activity.create!(title: "Write a letter to your future children or grandchildren.",
description: "All of us have some advice or some stories inside of us that we want to someday share with our children, grandchildren, or other loved ones. Take some time to write these things down with the intent of giving them to that person some day. In the event that you pass on, you can be sure that they'll still receive the story or advice you wanted to tell them. This can be a very powerful way to consider your feelings and memories as you format them in a way that they can be shared with the ones you care about the most.")

Activity.create!(title: "Make Christmas gifts in advance.",
description: "If you know already that some people will be on your Christmas list, why not spend some time now making them interesting and thoughtful gifts and saving yourself some money over the long haul? Make them some homemade soap, some homemade hot chocolate mix, and maybe a bottle of homemade beer as a gift. Prepare all of these items, then go ahead and box and wrap them, since they'll stay good for months.")

Activity.create!(title: "Pick up a musical instrument and learn it.",
description: "Yes, you can find an instrument for free - and learn how to play it for free as well. Just hit Craigslist and Freecycle looking for freebies, then utilize YouTube and other resources for tutorials. Here's a detailed guide to learning an instrument for free. With a bit of diligence and effort, you can start from nowhere and learn to play a song on your own instrument for no cost.")

Activity.create!(title: "Pick up (and read) a copy of the town's free newspaper.",
description: "Many cities have a free newspaper that you can snag at the grocery store - some cities have quite a few of them.")

Activity.create!(title: "Play with a pet - it doesn't have to be your own.",
description: "An hour spent playing fetch or Frisbee with a dog or rubbing its belly is an hour well spent, and the same can be said for time spent curled up petting a cat. Spend some quality time with your pet or with the pet of a neighbor or a friend; animal shelters are sometimes in need of volunteers to walk or play with their rescue pets as well. Every pet loves attention and a bit of exercise and interaction, and petting an animal can lower your blood pressure and reduce stress hormones.")

Activity.create!(title: "Go on a wandering walk.",
description: "Step out your front door and go in whichever direction looks the most interesting. As long as you have some basic navigational skills, you won't get lost, and you can turn around or backtrack whenever you get bored or hit a dead end.")

Activity.create!(title: "Help out an elderly or disabled friend or neighbor.",
description: "There's always a person or two in your life that could use a helping hand, but often are too proud to ask. One great way to bridge this gap is to just stop in and visit and pay attention - if they need something, you'll usually find out. Then just volunteer to do it and get started on the task.")

Activity.create!(title: "Start a book club - or find one to join.",
description: "If you like reading and know other friends that enjoy it, too, consider starting a book club with them where you all read the same book for a week then meet to talk about it. It can transform reading from a solitary activity into a more socially oriented one, and with a library at your disposal, it can be a free activity as well.")

Activity.create!(title: "Play a card game.",
description: "A deck of cards and a few friends are all you need for a fun afternoon. Games like bridge, canasta, pinochle, pitch, euchre, hearts, spades, and 500 are not only intellectually challenging, but are intensely social activities as well, drawing you out to interact with others around you.")

Activity.create!(title: "Have an 'entertainment swap' with a friend.",
description: "This one's pretty easy. Just have a friend bring over a pile of their own DVDs, CDs, books, and video games that they think you'd like. When they arrive, exchange an item for an item as a temporary swap. This will not only refresh your media collection for a while, but can provide a great opportunity for you to talk about your interests with a friend.")

Activity.create!(title: "Explore a blog you like.",
description: "If you're reading this, you're probably at least a casual reader of at least one blog. What you might have forgotten, though, is that most worthwhile blogs have tons of useful and entertaining stuff in their archives.")

Activity.create!(title: "Explore Wikipedia.",
description: "You can also allow yourself some time to get lost down a Wikipedia rabbit hole - when you look up a tidbit of history, then start clicking deeper and deeper to learn more about related events and interesting historical subplots. Since each entry cross-links to so much other information, you could go on forever. Wikipedia, despite its imperfections, is like candy to the curious mind.")

Activity.create!(title: "Clean out a closet.",
description: "We've all got spaces in our living areas that accumulate junk, and it's often a small psychological burden - we dread going in there and digging for something we need. Well, why not get rid of one of those burdens? Clean out a closet in your home.")

Activity.create!(title: "Play Frisbee at the park.",
description: "Get a friend (or a pet) and dig out that old Frisbee from your closet, then head out to an open field and toss it around. It's a lot of fun, a great excuse to run around and stretch and jump, and it doesn't cost a dime.")

Activity.create!(title: "Take a long, soaking bath.",
description: "You'll notice many of these suggestions don't cost money - they simply cost time that you may not otherwise grant yourself. When was the last time you treated yourself to a long, relaxing bath? Fill up a tub with warm water, strip down, get in, and relax.")

Activity.create!(title: "Binge-watch a great TV series.",
description: "A cold or rainy weekend is perfect for plowing through episode after episode of an addictive or amusing show. If you already have a Netflix or Amazon Prime subscription, you have unlimited access to thousands of movies and commercial-free TV shows - including some critically acclaimed TV series perfect for 'binge-watching' if you've never seen them before. Many libraries also loan out complete seasons of TV series on DVD.")

Activity.create!(title: "Attend a free community class.",
description: "Many institutions and stores offer free classes on the weekends on all sorts of topics. Stop by a local food store and catch a free cooking class, or a hardware store to learn about a home repair topic.")

Activity.create!(title: "Donate some unwanted things to charity.",
description: "If you've sorted through your stuff to clear out the clutter, but don't want to have a yard sale, consider giving the stuff you don't want to charity. Not only will you have a cleaner house, you'll have the good feeling of knowing your items are going to be used by someone who actually needs them. Get receipts for your donations, and you'll have some extra tax deductions next April, too.")

Activity.create!(title: "Discover new music that you like.",
description: "Try out free music services like Pandora or Spotify. Pandora allows you to enter a musical 'seed' - your favorite band, song, or album, for instance - and generates a radio station based on that information, playing songs with similar 'musical DNA.' Give it a whirl - you'll be surprised at the amount of good music you've yet to discover that you're able to listen to for free.")

Activity.create!(title: "Revisit a favorite book or favorite movie.",
description: "Most of us have some works of writing or film that simply resonate with us on a very deep level. If a certain book brought you to tears, restored your faith, or shook your core years ago, it might be worth reading again.")

Activity.create!(title: "Build a cardboard castle.",
description: "Stop by an appliance store and ask if they have any extra appliance boxes you can take home, then flatten them and load up your vehicle When you get home, use them to build a giant cardboard castle in your living room or in your backyard. Cut out doors and windows, and attach multiple boxes together to make rooms. This can be a great afternoon of fun for free!")

Activity.create!(title: "Dig an old video game console out of the closet and play some of your favorites.",
description: "A lot of families have old video game consoles in the closet - an ancient PlayStation or Super Nintendo, long forgotten about, with a controller and a few games. Dig out that old console and hook it up to a television, then relive some of the memories of the games you used to play for hours.")

Activity.create!(title: "Do some amateur stargazing.",
description: "Go outside on a clear evening, preferably away from city lights, and look up at the sky. Use some handy star maps or an app such as SkyView Free to know what you're looking at. Spread out some blankets on the ground, lay flat on your back, stare upwards, and realize how magnificent the universe is around you.")

Activity.create!(title: "Go on a hike or a long walk.",
description: "Look up some local hiking or walking trails, and just take off. Let yourself get absorbed into nature and simply enjoy the journey. Go at your own speed - this is for your own personal enjoyment, after all.")

Activity.create!(title: "Take a stab at writing poetry (or other forms of creative writing).",
description: "The basics of poetry are easier than you might think - just try writing down what's on your mind. Whatever you're thinking about, just write it down. That can provide the basics of any poem.")

Activity.create!(title: "Go on a bike ride.",
description: "If you've got a bicycle and a helmet in your garage or closet, you already have everything you need for some good exercise and some good fun. Head outside and bike away. Almost every town and every state park around here has an extensive array of bike trails, so you can almost always find somewhere new and interesting to ride. Plus it'll help get you into shape really quickly.")
