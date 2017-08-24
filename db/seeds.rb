Location.create ([
	{id: 1, name: "New York"},
	{id: 2, name: "California"},
	{id: 3, name: "New Jersey"},
	{id: 4, name: "Connecticut"},
	{id: 5, name: "Nevada"},
	{id: 6, name: "Massachusetts"},
	{id: 7, name: "Washington DC"},
	{id: 8, name: "Oregon"},
	{id: 9, name: "Utah"},
	{id: 10, name: "Other"}
])

User.create ([
	{id: 1, location_id: 1, fname: "Katy", lname: "Pola", username: "katy", admin: true, email: "katyp03@gmail.com", password: "password", propic: File.new("#{Rails.root}/app/assets/images/puppy.jpg")},
	{id: 2, location_id: 3, fname: "Temperance", lname: "Baker", username: "tempe", admin: false, email: "tempe@dog.com", password: "password", propic: File.new("#{Rails.root}/app/assets/images/dog.png")},
	{id: 3, location_id: 2, fname: "Katy", lname: "P", username: "katypola", admin: true, email: "katypola03@yahoo.com", password: "password", propic: File.new("#{Rails.root}/app/assets/images/katy_propic.png")},
	{id: 4, location_id: 1, fname: "Guest", lname: "User", username: "username", admin: false, email: "user@user.com", password: "password", propic: File.new("#{Rails.root}/app/assets/images/science.png")}
])

Field.create ([
	{id: 1, name: "Astronomy", overview: "Overview of astronomy...", image: File.new("#{Rails.root}/app/assets/images/astronomy.jpg")},
	{id: 2, name: "Chemistry", overview: "Overview of chemistry...", image: File.new("#{Rails.root}/app/assets/images/chem2.jpg")},
	{id: 3, name: "Geology", overview: "Overview of astronomy...", image: File.new("#{Rails.root}/app/assets/images/geo1.jpeg")},
	{id: 4, name: "Physics", overview: "Overview of chemistry...", image: File.new("#{Rails.root}/app/assets/images/phys4.jpg")},
	{id: 5, name: "Botany", overview: "Overview of astronomy...", image: File.new("#{Rails.root}/app/assets/images/botany4.jpg")},
	{id: 6, name: "Zoology", overview: "Overview of chemistry...", image: File.new("#{Rails.root}/app/assets/images/zoo3.jpg")},
	{id: 7, name: "Meteorology", overview: "Overview of astronomy...", image: File.new("#{Rails.root}/app/assets/images/met6.jpg")},
	{id: 8, name: "Agriculture", overview: "Overview of chemistry...", image: File.new("#{Rails.root}/app/assets/images/ag2.jpg")},
	{id: 9, name: "Oceanography", overview: "Overview of astronomy...", image: File.new("#{Rails.root}/app/assets/images/ocean2.jpg")},
	{id: 10, name: "Paleontology", overview: "Overview of chemistry...", image: File.new("#{Rails.root}/app/assets/images/dino4.jpg")},
	{id: 11, name: "Engineering", overview: "Overview of astronomy...", image: File.new("#{Rails.root}/app/assets/images/eng1.jpg")},
	{id: 12, name: "Marine Biology", overview: "Overview of chemistry...", image: File.new("#{Rails.root}/app/assets/images/marinebio1.jpg")},
	{id: 13, name: "Technology", overview: "Overview of astronomy...", image: File.new("#{Rails.root}/app/assets/images/tech2.jpg")},
	{id: 14, name: "Psychology", overview: "Overview of chemistry...", image: File.new("#{Rails.root}/app/assets/images/psych2.jpg")},
	{id: 15, name: "Robotics", overview: "Overview of astronomy...", image: File.new("#{Rails.root}/app/assets/images/robot3.jpg")},
	{id: 16, name: "Anthropology", overview: "Overview of chemistry...", image: File.new("#{Rails.root}/app/assets/images/anthro3.jpg")},
	{id: 17, name: "Mathematics", overview: "Overview of astronomy...", image: File.new("#{Rails.root}/app/assets/images/math1.jpg")},
	{id: 18, name: "Linguistics", overview: "Overview of chemistry...", image: File.new("#{Rails.root}/app/assets/images/ling2.png")}
])

Experiment.create ([
	{id: 1, field_id: 1, title: "Make Your Own Eclipse", overview: "You can create a solar eclipse in just a few seconds using materials found around the house! This experiment demonstrates how a small celestial body like the moon (represented by a quarter) can obscure the light from a much larger one, such as the sun (represented by a flashlight).", image: File.new("#{Rails.root}/app/assets/images/eclipse_exp.jpg")},
	{id: 2, field_id: 2, title: "Grow Your Own Crystals", overview: "Grow your own crystal spikes quickly and easily, using only epsom salt and dark construction paper. Use a magnifying glass to see your creations up-close. A sunny day helps with this one!", image: File.new("#{Rails.root}/app/assets/images/crystal.jpg")},
	{id: 3, field_id: 1, title: "DIY Barometer", overview: "Filler Overview", image: File.new("#{Rails.root}/app/assets/images/met5.jpg")},
	{id: 4, field_id: 13, title: "Make Your Own Webpage", overview: "Filler Overview", image: File.new("#{Rails.root}/app/assets/images/tech5.jpg")},
	{id: 5, field_id: 2, title: "Exploding Volcano", overview: "This is a classic experiment in which a chemical reaction creates the appearance of a bubbling volcanic eruption!", image: File.new("#{Rails.root}/app/assets/images/volcano.jpg")},
	{id: 6, field_id: 14, title: "Brain Teasers", overview: "Filler Overview", image: File.new("#{Rails.root}/app/assets/images/psych1.jpeg")},
	{id: 7, field_id: 5, title: "Beginner Garden Kit", overview: "Filler Overview", image: File.new("#{Rails.root}/app/assets/images/plants3.jpg")},
	{id: 8, field_id: 15, title: "Fun With Robotics", overview: "Filler Overview", image: File.new("#{Rails.root}/app/assets/images/robot4.jpg")},
	{id: 9, field_id: 16, title: "Anthro Exercises", overview: "Filler Overview", image: File.new("#{Rails.root}/app/assets/images/anthro2.jpg")}
])

Step.create ([
	{id: 1, experiment_id: 1, number: 1, body: "Place the flashlight on a surface facing a wall.", image: File.new("#{Rails.root}/app/assets/images/red_flashlight.jpg")},
	{id: 2, experiment_id: 1, number: 2, body: "Hold out the quarter in front of the flashlight, and turn the flashlight on.", image: File.new("#{Rails.root}/app/assets/images/flashlight_on.jpg")},
	{id: 3, experiment_id: 1, number: 3, body: "Position the quarter so that it is directly between the flashlight and the wall.", image: File.new("#{Rails.root}/app/assets/images/quarter_hand.jpg")},
	{id: 4, experiment_id: 1, number: 4, body: "Eclipse time! Experiment with both full and partial solar eclipses, where the moon comes between Earth and the sun, and either fully or partially obscures the light from the sun.", image: File.new("#{Rails.root}/app/assets/images/eclipse_anim.png")},
	{id: 5, experiment_id: 2, number: 1, body: "A sunny day isn't required, but it will help! You want rapid evaporation of the water to form the crystals, so select a warm, dry place to grow crystals (a sunny porch or window is great).", image: File.new("#{Rails.root}/app/assets/images/sun.png")},
	{id: 6, experiment_id: 2, number: 2, body: "Use the scissors to cut black (or another dark color) construction paper so that it will fit in the bottom of the pan.", image: File.new("#{Rails.root}/app/assets/images/const_paper.jpg")},
	{id: 7, experiment_id: 2, number: 3, body: "Add 1 tablespoon of Epsom salt to 1/4 cup warm water, stirring until the salt is dissolved. Wash your hands after handling Epsom salts; don't drink the solution, and avoid spilling it on yourself. Experiment with adding water colors or food color to the salt solution.", image: File.new("#{Rails.root}/app/assets/images/food_color.jpg")},
	{id: 8, experiment_id: 2, number: 4, body: "Put the construction paper in the pan and pour the salt solution over the paper. Put the pan in the place you have selected for crystal-growing. As the water evaporates, you'll see lots of spiky crystals.", image: File.new("#{Rails.root}/app/assets/images/tempe_crystal.JPG")},
	{id: 9, experiment_id: 5, number: 1, body: "Put the small container found in your kit (or any other small container) inside your volcano shell.  Also note that this one can be a little messy!  Prepare for some cleanup, or take it outside.", image: File.new("#{Rails.root}/app/assets/images/mop.png")},
	{id: 10, experiment_id: 5, number: 2, body: "Add 2 spoonfuls of baking soda, about a spoonful of dish soap, and 5 drops each of red and yellow food coloring.", image: File.new("#{Rails.root}/app/assets/images/volcanofirst.png")},
	{id: 11, experiment_id: 5, number: 3, body: "Add an ounce of the vinegar and watch your volcano come alive!", image: File.new("#{Rails.root}/app/assets/images/volcano2.png")}
])

Kit.create ([
	{id: 1, experiment_id: 1, name: "Eclipse Kit", image: File.new("#{Rails.root}/app/assets/images/eclipse_anim2.jpg")},
	{id: 2, experiment_id: 2, name: "Crystal Kit", image: File.new("#{Rails.root}/app/assets/images/epsom_crystal.jpg")},
	{id: 3, experiment_id: 5, name: "Volcano Kit", image: File.new("#{Rails.root}/app/assets/images/volcano3.png")}
])

Post.create ([
	{id: 1, user_id: 1, experiment_id: 1, title: "I made an eclipse!", body: "I loved this simple eclipse demonstration!  It really accurately showed the difference between a partial and total eclipse in a fun, interactive way.", image: File.new("#{Rails.root}/app/assets/images/my_eclipse.jpg")},
	{id: 2, user_id: 2, experiment_id: 2, title: "Check out my crystals!", body: "I know I can't eat them, but this was so fun!  ", image: File.new("#{Rails.root}/app/assets/images/tempe_crystal.JPG")}
])

Comment.create ([
	{id: 1, user_id: 1, post_id: 2, body: "Awesome!!  I'll be trying this one next."},
	{id: 2, user_id: 2, post_id: 1, body: "Sweet eclipse.  Can I eat it?"}
])

Item.create ([
	{id: 1, name: "flashlight"},
	{id: 2, name: "quarter"},
	{id: 3, name: "black construction paper"},
	{id: 4, name: "pie or cake pan"},
	{id: 5, name: "epsom salt"},
	{id: 6, name: "warm water"},
	{id: 7, name: "scissors"},
	{id: 8, name: "volcano shell"},
	{id: 9, name: "small lava container"},
	{id: 10, name: "2 tbsp baking soda"},
	{id: 11, name: "1 oz vinegar"},
	{id: 12, name: "red and yellow food coloring"}
])

UserField.create ([
	{user_id: 1, field_id: 1},
	{user_id: 1, field_id: 2},
	{user_id: 2, field_id: 2}
])

UserExperiment.create ([
	{user_id: 1, experiment_id: 1},
	{user_id: 1, experiment_id: 2},
	{user_id: 1, experiment_id: 3},
	{user_id: 2, experiment_id: 2},
	{user_id: 3, experiment_id: 4},
	{user_id: 3, experiment_id: 5},
	{user_id: 3, experiment_id: 8}
])

UserKit.create ([
	{user_id: 1, kit_id: 1},
	{user_id: 1, kit_id: 2},
	{user_id: 1, kit_id: 3},
	{user_id: 2, kit_id: 2},
	{user_id: 3, kit_id: 3}
])

KitItem.create ([
	{kit_id: 1, item_id: 1},
	{kit_id: 1, item_id: 2},
	{kit_id: 2, item_id: 3},
	{kit_id: 2, item_id: 4},
	{kit_id: 2, item_id: 5},
	{kit_id: 2, item_id: 6},
	{kit_id: 2, item_id: 7},
	{kit_id: 3, item_id: 8},
	{kit_id: 3, item_id: 9},
	{kit_id: 3, item_id: 10},
	{kit_id: 3, item_id: 11},
	{kit_id: 3, item_id: 12}
])