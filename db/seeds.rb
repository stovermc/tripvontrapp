

admin = User.create(name: "admin", email: "admin@admin.com", password: "admin", role: 1)


user1 = User.create(name: "user1", email: "user1@user1.com", password: "user1", role: 0)
order1a = user1.orders.create(id: 1, status: "Paid")
order1b = user1.orders.create(id: 2, status: "Paid")
order1c = user1.orders.create(id: 11, status: "Ordered")

user2 = User.create(name: "user2", email: "user2@user2.com", password: "user2", role: 0)
order2a = user2.orders.create(id: 3, status: "Cancelled")
order2b = user2.orders.create(id: 4, status: "Completed")

user3 = User.create(name: "user3", email: "user3@user3.com", password: "user3", role: 0)
order3a = user3.orders.create(id: 5, status: "Paid")
order3b = user3.orders.create(id: 6, status: "Completed")

user4 = User.create(name: "user4", email: "user4@user4.com", password: "user4", role: 0)
order4a = user4.orders.create(id: 7, status: "Ordered")
order4b = user4.orders.create(id: 8, status: "Paid")
order4c = user4.orders.create(id: 9, status: "Completed")
order4d = user4.orders.create(id: 10, status: "Cacncelled")



city_life = Category.create(name: "City Life")
food_and_drink = Category.create(name: "Food and Drink")
arts_and_culture = Category.create(name: "Arts and Culture")
great_outdoors = Category.create(name: "The Great Outdoors")
active_adventures = Category.create(name: "Active Adventures")
family_friendly = Category.create(name: "Family Friendly")
good_for_groups = Category.create(name: "Good for Groups")


Experience.create(title: "Public Art Walking Tour", description: "Denver is home to an eclectic and fascinating public art collection that involves much more than its poster child--a red-eyed stallion sculpture installed at Denver International Airport known for falling on and killing its artist (Luis Jimenez) shortly before he finished the piece. Your guide will take you on a walking tour of several installation sites around downtown Denver and share some history and information about each piece. Enjoy!", cost: 25, city: "Denver", image_path: "https://aamd.org/sites/default/files/styles/document/public/from-the-field-story/PhillipsInterior_Murray.jpg?itok=lgYhiuuN", status: "retired").categories << [city_life, arts_and_culture, good_for_groups]



Experience.create(title: "Brewery Crawl", description: "Join a well-known brewer for a crawl at three of her favorite breweries in Denver. (Please note: Drinks are not included in experience price.)", cost: 35, city: "Denver", image_path: "http://kcbeertour.com/wp-content/uploads/2015/09/Flight.jpg").categories << [city_life, food_and_drink, good_for_groups]

Experience.create(title: "German Christmas Market Visit Followed by a trip to the Hofbrauhaus House", description: "Meet up with U.S. expat and fluent German speaker for a walkthrough one of the most famous holiday markets. Your guide will show you the ropes with it comes to haggling and direct you to some of the best vendors while sharing history about the market. Afterward, your guide will take you to the iconic Hofbrauhaus beer hall and enjoy a beer with you where your experience will comes end. Prost! (Please note: Drinks are not included in experience price.)", cost: 25, city: "Munich", image_path: "http://www.5oclocktravelandcruise.com/uploads/6/9/4/0/69409069/6591890.jpg?600").categories << [arts_and_culture, family_friendly]

Experience.create(title: "Floating Market Visit", description: "Visiting a floating market is not something you want to skip when you visit Thailand. Join your guide for a stroll through one of the top markets in Bangkok, and learn about local customs and traditions, how select from the vendors (or visit them all!), and how to haggle with vendors (a normal and expected tradition). Boats in the market are piled high with tropical fruit and vegetables, fresh ready-to-drink coconut juice, and local food cooked from floating kitchens located right on the boat. Markets available for this experience include Taling Chan Market, Bang Ku Wiang Market, Tha Kha, and Damnoen Saduak.", cost: 45, city: "Bangkok", image_path: "https://www.justgola.com/media/a/00/0e/58540_og_1.jpeg").categories << [arts_and_culture, city_life, food_and_drink]

Experience.create(title: "Walk and talk: Greenwich Village", description: "A long-time resident of Greenwich Village will meet you at a favorite local coffee shop for a little caffeine before setting out on foot for a walking tour of one of Manhattan's most beloved neighborhoods.", cost: 25, city: "New York", image_path: "https://untappedcities-wpengine.netdna-ssl.com/wp-content/uploads/2014/03/1-Buvette-Grove-Street-NYC.jpg").categories << [city_life, food_and_drink, active_adventures]

Experience.create(title: "Denver Architectural History walk and talk", description: "A Denver local and board member of the Denver Architectural Foundation will meet up with you at Union Station, Denver's iconic original train station that underwent a multi-million-dollar restoration a few years ago. You'll hear a little about the restoration and the general area's architecture over a cup of coffee or a beverage from the station's Terminal Bar before heading out on foot to learn about Denver's architectural style and history.", cost: 25, city: "Denver", image_path: "http://colorado.uli.org/wp-content/uploads/sites/19/2016/12/Denver-Union-Station-SOM-lead.jpg").categories << [city_life, arts_and_culture]

Experience.create(title: "Red Rocks History and Hike", description: "Meet your guide in your best hemp poncho.  You’ll tour the site where Phish first performed “Golgi Apparatus” to a stunned audience of 30,000.  You’ll get the backstage pass to see where Jerry Garcia brainstormed “KC Jones” and you’ll discover why frisbees never come in black.  This concert venue put Denver on the map.", cost: 25, city: "Denver", image_path: "http://static.thousandwonders.net/Red.Rocks.Amphitheatre.original.11553.jpg").categories << [active_adventures, great_outdoors, good_for_groups]

Experience.create(title: "Union Station visit", description: "Go back in time to this architectural gem.  Built in the 1880’s, it stands as one of the iconic “doorways to the west”.  Grab a coffee or beer to go with your locally-sourced beef jerky and hand-shucked oysters while you watch the hustle and bustle of people about the city. Includes a beverage and light snack.",  cost:  10, city: "Denver", image_path: "http://res.cloudinary.com/simpleview/image/upload/v1476809593/clients/denver/denver_union_station_exterior_2015_991321c8-7b2b-4f91-bd96-1c8826647822.jpg").categories << [city_life, active_adventures, good_for_groups, arts_and_culture]

Experience.create(title: "Viennese Cafe Visit", description: "‘Thanks a latte!’ is what you’ll be saying after you join us for a tour of some of Vienna’s hidden cafes.  Sit where Freud postulated his iconic theorems and presented to the biggest minds in psychoanalysis. Includes two beverages.", cost: 20, city: "Vienna", image_path: "https://static1.squarespace.com/static/56238e70e4b079b0ec755562/t/56251805e4b0bc84fbc5750c/1445271563701/").categories << [city_life, arts_and_culture, family_friendly]

Experience.create(title: "Willamette Valley Vineyard Tour", description: "Make sure your feet are washed, because you’ll be stomping grapes and being a part of your own vintage.  Tour three vineyards, sample local charcuterie and finish the day with a Q+A with Willamette's most inventive vintner. Includes all transportation.", cost: 25, city: "Salem", image_path: "https://img.grouponcdn.com/deal/3L7NyB85vRtpnRW3PsU9/RM-2048x1242/v1/c700x420.jpg").categories << [food_and_drink, great_outdoors, arts_and_culture]

Experience.create(title: "Sunrise San Francisco", description: " 'Wake Up San Francisco' wasn’t just the name of Danny Tanner’s popular morning talk show in the early 90’s.  You’ll be singing it from the hill tops (and there are plenty of them on this tour).  You’ll visit Ghirardelli Square for a delicious morning treat, followed by a 'groovy' pit stop at Haight and Asbury, and we’ll cap off the afternoon with a picnic in the Presidio.",  cost: 15,  city: "San Francisco", image_path: "https://c1.staticflickr.com/8/7147/6459990459_87558c903a_b.jpg").categories << [city_life, active_adventures, good_for_groups]

Experience.create(title: "Mystery Tour", description: "Not for the feint of heart or weak of will.  Throw caution to the wind and let our host decide where you’re off to.  You might find yourself on a trail run, riding through City Park, or carving turns down from 13,000 feet at A-Basin.  You’ll receive a message 24-hours in advance to tell you where to meet, what to pack and whether to bring your GoPro.Value: Priceless.", cost: 50, city: "Denver", image_path: "https://www.advancedphotoshop.co.uk/users/65251/thm1024/1367325918_upitnik.jpg").categories << [active_adventures, good_for_groups, great_outdoors]

Experience.create(title: "Cream City Cruise", description: "Always wear a life jacket and don’t rock the boat.  You’ll take a two hour paddle through the lower Milwaukee River to the confluence of the Kinnikinnick and Menominee Rivers.  Learn about Milwaukee’s storied past, from the first brew houses to the ice wars of the early 20th century.", cost: 25,  city: "Milwaukee", image_path: "http://wanderthemap.com/wp-content/uploads/2017/01/Kayaking_Milwaukee_Wisconsin_Milwaukee_River_04.jpg").categories << [great_outdoors, active_adventures]

Experience.create(title: "Paddle Hawaii", description: "Your core muscles will be lean and toned after our three-hour paddle around Hawaii’s’ ‘Lost Island’.  Thought to have been swallowed by the sea during the 1983 Typhoon Rhonda, it’s a secret gem in the Pacific.  Untouched by tourism, you’ll have a chance to see pristine reefs and colorful wildlife atop your board.",  cost: 35, city: "Honolulu", image_path: "https://paddlediva.com/wp-content/uploads/2016/09/Stand-up-Paddle-Boarding.jpg").categories << [active_adventures, great_outdoors, good_for_groups, family_friendly]

Experience.create(title: "Birding in BraziI", description: "I wouldn’t say it if it wasn’t true, but on a trip last year, one of our guests spotted a once-thought extinct Dodo.  They’re alive and thriving and we know exactly where to find them.  Wow your fellow amateur ornithologists at your next cocktail party with shots of rarely seen plumage.", cost: 10, city: "Rio", image_path: "http://www.buckhorninn.com/wp-content/uploads/2015/09/Birdwatching-Adults.jpg").categories << [great_outdoors]

Experience.create(title: "Volcano Jumping", description:  "After this trip, you’ll realize that the Red Bull Rampage is mere child’s play.  We’ll supply you with your rocket skates, a helmet and all the Mountain Dew your liver can synthesize.  You bring your fearless attitude and your Facebook-ready smile.  You’ll collect all the ‘likes’ on your next post.", cost: 100, city: "Pompeii", image_path: "http://cdn2.list25.com/wp-content/uploads/2014/12/www.swide_.com-top-10-volcanoes-to-visit-best-volcano-tours-vesuvius-naples-610x396.jpg").categories << [active_adventures, great_outdoors, arts_and_culture]
