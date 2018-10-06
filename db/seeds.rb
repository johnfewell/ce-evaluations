[{email: "fewell@gmail.com", password: "asdasd", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 44, current_sign_in_at: "2018-02-21 18:48:25", last_sign_in_at: "2018-02-20 21:03:24", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", superadmin_role: true, instructor_role: false, attendee_role: false, first_name: "John", last_name: "Fewell", title: "Mr", suffix: "FIS", provider: "facebook", uid: "10154983260426560"},
 {email: "1@test.com", password: "asdasd", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 44, current_sign_in_at: "2018-02-21 18:48:25", last_sign_in_at: "2018-02-20 21:03:24", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", superadmin_role: false, instructor_role: true, attendee_role: false, first_name: "Instructor", last_name: "Fewell", title: "Mr", suffix: "FIS", provider: "facebook", uid: "10154983260426560"},
 {email: "2@test.com", password: "asdasd", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 44, current_sign_in_at: "2018-02-21 18:48:25", last_sign_in_at: "2018-02-20 21:03:24", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", superadmin_role: false, instructor_role: false, attendee_role: true, first_name: "Attendee", last_name: "Fewell", title: "Mr", suffix: "FIS", provider: "facebook", uid: "10154983260426560"}
].each do |user_attributes|
  user = User.new(user_attributes)
  user.save!(validate: false)
end

Instructor.create!([
  {first_name: "Bill ", last_name: "Hackett", title: "Mr", suffix: "V", user_id: 13},
  {first_name: "Kobe", last_name: "Williamson", title: "Senior Functionality Planner", suffix: "II", user_id: nil},
  {first_name: "test", last_name: "test", title: "test", suffix: "est", user_id: 16},
  {first_name: "Melvina", last_name: "Jacobson", title: "Future Division Analyst", suffix: "DVM", user_id: nil},
  {first_name: "Ernestina", last_name: "Dicki", title: "Internal Solutions Developer", suffix: "MD", user_id: nil},
  {first_name: "Mateo", last_name: "Beahan", title: "Corporate Communications Architect", suffix: "Sr.", user_id: nil},
  {first_name: "Brook", last_name: "Welch", title: "Product Data Manager", suffix: "PhD", user_id: nil},
  {first_name: "Pearlie", last_name: "Bergstrom", title: "Customer Integration Supervisor", suffix: "PhD", user_id: nil},
  {first_name: "Gest", last_name: "Filter", title: "Dr.", suffix: "LCSW", user_id: 3},
  {first_name: "John", last_name: "Fewellie", title: "Mr.", suffix: "III", user_id: 1}
])

Attendee.create!([
  {first_name: "Kale", last_name: "Zulauff", title: "Corporate Paradigm Specialist", suffix: "Ph.D.", user_id: 14},
  {first_name: "Jayce", last_name: "Beer", title: "International Branding Executive", suffix: "I", user_id: nil},
  {first_name: "Cole", last_name: "Keeling", title: "Human Functionality Liaison", suffix: "V", user_id: nil},
  {first_name: "Stanford", last_name: "Kreiger", title: "National Usability Technician", suffix: "DDS", user_id: nil},
  {first_name: "Freda", last_name: "Greenfelder", title: "Chief Configuration Developer", suffix: "DVM", user_id: nil},
  {first_name: "Karson", last_name: "O'Reilly", title: "Legacy Functionality Facilitator", suffix: "PhD", user_id: nil},
  {first_name: "Robert", last_name: "Mosco", title: "Mr.", suffix: "LCSW", user_id: 20},
  {first_name: "Dave", last_name: "Brewster", title: "Mr", suffix: "III", user_id: 9},
  {first_name: "John", last_name: "Fewellie", title: "Mr.", suffix: "III", user_id: 1},
  {first_name: "Test", last_name: "test", title: "test", suffix: "test\r\n", user_id: nil},
  {first_name: "Gest", last_name: "Filter", title: "Dr.", suffix: "LCSW", user_id: 7},
  {first_name: "TEst", last_name: "lkj", title: "lkj", suffix: "lkj", user_id: 17},
  {first_name: "John", last_name: "Fewell", title: "Mr", suffix: "FIS", user_id: 6},
  {first_name: "dog", last_name: "johnstone", title: "dr", suffix: "ph bark", user_id: nil},
  {first_name: "csv", last_name: "import", title: "mr", suffix: "ESQ", user_id: nil},
  {first_name: "dog", last_name: "johnstone", title: "dr", suffix: "ph bark", user_id: nil},
  {first_name: "csv", last_name: "import", title: "mr", suffix: "ESQ", user_id: nil},
  {first_name: "klj", last_name: "lkj", title: "lkj", suffix: "lkj", user_id: 18},
  {first_name: "csvd", last_name: "imported", title: "mr", suffix: "ESQ", user_id: 11},
  {first_name: "test", last_name: "test", title: "test", suffix: "test", user_id: 12},
  {first_name: "Jovical", last_name: "Nush", title: "Mr.", suffix: "III", user_id: nil},
  {first_name: "Carluy", last_name: "JIMP", title: "Ms", suffix: "III", user_id: 8},
  {first_name: "Ihope", last_name: "So", title: "dr", suffix: "ph bark", user_id: 10},
  {first_name: "Working", last_name: "CSV", title: "mr", suffix: "ESQ", user_id: nil},
  {first_name: "Ihope", last_name: "So", title: "dr", suffix: "ph bark", user_id: nil}
])
Course.create!([
  {title: "Decorating Your Bespoke Sriracha Pug", location: "Willow Court", credits: 10.0, learning_objective_1: "Phlogiston banh mi meggings disrupt pug.", learning_objective_2: "You probably haven't heard of them semiotics carry swag chia keytar sriracha.", learning_objective_3: "Mixtape pop-up 90's gluten-free celiac raw denim carry kickstarter.", start_date: "2017-09-24", end_date: "2017-11-07", published: true, instructor_id: 5, evaluation_id: 4},
  {title: "Hella Locavore Franzen Fans", location: "Eagle Estates", credits: 7.0, learning_objective_1: "Semiotics pabst cred seitan neutra.", learning_objective_2: "Chicharrones sriracha butcher locavore selvage yolo brooklyn swag.", learning_objective_3: "Aesthetic cliche chia kogi you probably haven't heard of them readymade before they sold out etsy food truck.", start_date: "2017-09-23", end_date: "2017-11-08", published: true, instructor_id: 1, evaluation_id: nil},
  {title: "Letterpress Flannel Selfies For Vice", location: "Summer Point.", credits: 6.0, learning_objective_1: "Meditation hashtag listicle etsy authentic try-hard church-key jean shorts.", learning_objective_2: "Synth before they sold out church-key gastropub bicycle rights pug.", learning_objective_3: "Microdosing pug echo keffiyeh retro occupy.", start_date: "2017-09-23", end_date: "2017-10-05", published: true, instructor_id: 10, evaluation_id: nil},
  {title: "Small Batch Chia Vinegar Kombucha", location: "Royal Gardens", credits: 9.0, learning_objective_1: "Kickstarter taxidermy post-ironic pickled vinegar green juice cray skateboard xoxo.", learning_objective_2: "Normcore brooklyn dreamcatcher put a bird on it fashion axe.", learning_objective_3: "Flannel keffiyeh +1 vinyl before they sold out xoxo.", start_date: "2017-09-28", end_date: "2017-11-06", published: true, instructor_id: 3, evaluation_id: nil},
  {title: "Gluten-free biodiesel hammock.", location: "Summer Acres", credits: 1.0, learning_objective_1: "Pabst roof hella wayfarers pug selfies kickstarter squid.", learning_objective_2: "Scenester drinking celiac narwhal.", learning_objective_3: "Vhs hella cleanse pug park gentrify.", start_date: "2017-10-02", end_date: "2017-11-06", published: false, instructor_id: 2, evaluation_id: nil},
  {title: "Ethical Chillwave", location: "Willow Estates", credits: 7.0, learning_objective_1: "Drinking readymade aesthetic yolo.", learning_objective_2: "Carry post-ironic iphone bespoke tattooed fanny pack slow-carb pitchfork.", learning_objective_3: "Actually carry offal letterpress tote bag mixtape kitsch ramps.", start_date: "2017-10-03", end_date: "2017-10-21", published: true, instructor_id: 1, evaluation_id: nil},
  {title: "Slow Carb Brooklyn Blog Aesthetic", location: "Pine Pointe", credits: 8.0, learning_objective_1: "Freegan distillery asymmetrical sartorial poutine kale chips.", learning_objective_2: "Cronut food truck brooklyn slow-carb semiotics.", learning_objective_3: "Banh mi cleanse meggings tilde viral.", start_date: "2017-09-26", end_date: "2017-10-12", published: false, instructor_id: 10, evaluation_id: nil},
  {title: "Disrupt Vegan Raw Denim", location: "University Court", credits: 7.0, learning_objective_1: "Pinterest post-ironic fashion axe kombucha readymade microdosing marfa meggings.", learning_objective_2: "Actually pitchfork post-ironic vinegar migas knausgaard skateboard.", learning_objective_3: "Marfa sartorial normcore salvia beard.", start_date: "2017-10-01", end_date: "2017-10-17", published: true, instructor_id: 7, evaluation_id: nil},
  {title: "Disruptive Offal Mustaches", location: "Willow Crossing", credits: 7.0, learning_objective_1: "Pug roof forage microdosing sartorial food truck.", learning_objective_2: "Waistcoat godard williamsburg echo shabby chic.", learning_objective_3: "Meggings xoxo ethical stumptown cronut goth.", start_date: "2017-09-24", end_date: "2017-10-10", published: false, instructor_id: 7, evaluation_id: nil},
  {title: "Food truck mixtape seitan.", location: "Paradise Pointe", credits: 7.0, learning_objective_1: "Brooklyn waistcoat tote bag echo blue bottle.", learning_objective_2: "Iphone tumblr xoxo chartreuse sustainable shoreditch.", learning_objective_3: "Iphone raw denim crucifix kickstarter.", start_date: "2017-09-28", end_date: "2017-10-29", published: false, instructor_id: 9, evaluation_id: nil},
  {title: "Pinterest flexitarian freegan.", location: "Paradise Heights", credits: 1.0, learning_objective_1: "Gentrify flannel authentic keytar chillwave celiac.", learning_objective_2: "Muggle magic deep v seitan 90's squid williamsburg salvia leggings put a bird on it.", learning_objective_3: "Next level blog loko vice ugh artisan hella.", start_date: "2017-10-03", end_date: "2017-10-11", published: false, instructor_id: 9, evaluation_id: nil},
  {title: "Shabby Chic Before They Sold Out", location: "Willow Acres", credits: 8.0, learning_objective_1: "Mumblecore stumptown deep v small batch cold-pressed organic.", learning_objective_2: "Occupy hashtag keytar schlitz mixtape waistcoat artisan blue bottle.", learning_objective_3: "Bespoke 3 wolf moon phlogiston tilde.", start_date: "2018-01-20", end_date: "2018-02-25", published: false, instructor_id: 4, evaluation_id: nil},
  {title: "Sustainable Irony, Ugh!", location: "Autumn Oaks", credits: 5.0, learning_objective_1: "Aesthetic chicharrones irony green juice banh mi meh.", learning_objective_2: "Neutra xoxo swag crucifix muggle magic.", learning_objective_3: "Venmo tote bag 90's pabst try-hard park.", start_date: "2018-02-05", end_date: "2018-02-26", published: true, instructor_id: 1, evaluation_id: nil},
  {title: "Post-ironic phlogiston muggle magic brooklyn pickled venmo.", location: "University Estates", credits: 2.0, learning_objective_1: "Mustache whatever stumptown yolo poutine etsy vegan.", learning_objective_2: "Sriracha letterpress shabby chic kale chips butcher +1.", learning_objective_3: "Ramps portland keytar cold-pressed.", start_date: "2018-01-26", end_date: "2018-02-20", published: true, instructor_id: 4, evaluation_id: nil},
  {title: "Knausgaard Art Party Fanny Pack Meggings Flexitarian.", location: "Willow Square", credits: 8.0, learning_objective_1: "Vinegar bicycle rights thundercats plaid deep v sriracha meh lo-fi.", learning_objective_2: "Goth pbr&b literally helvetica twee craft beer ramps fixie.", learning_objective_3: "Biodiesel 90's vinyl etsy.", start_date: "2017-12-01", end_date: "2017-12-01", published: true, instructor_id: 9, evaluation_id: 1},
  {title: "Yr Organic Hashtag", location: "Eagle Oaks", credits: 3.0, learning_objective_1: "Five dollar toast chartreuse wayfarers taxidermy letterpress echo pug.", learning_objective_2: "Food truck offal trust fund five dollar toast.", learning_objective_3: "Schlitz williamsburg brooklyn skateboard microdosing authentic ethical.", start_date: "2018-01-13", end_date: "2018-02-24", published: true, instructor_id: 10, evaluation_id: nil},
  {title: "Pour-over waistcoat chillwave hashtag vice hoodie.", location: "Willow Gardens", credits: 9.0, learning_objective_1: "Hoodie brunch slow-carb meggings bicycle rights.", learning_objective_2: "90's butcher chambray vhs.", learning_objective_3: "Semiotics helvetica 8-bit brooklyn tilde try-hard.", start_date: "2018-01-26", end_date: "2018-02-22", published: true, instructor_id: 10, evaluation_id: nil},
  {title: "Lumbersexual   You Probably Haven't Heard Of Them.", location: "University Oaks", credits: 3.0, learning_objective_1: "Food truck taxidermy blog skateboard flannel +1 butcher.", learning_objective_2: "Keytar ugh hella mumblecore semiotics etsy five dollar toast green juice.", learning_objective_3: "3 wolf moon everyday seitan direct trade trust fund irony.", start_date: "2018-02-04", end_date: "2018-02-18", published: true, instructor_id: 10, evaluation_id: nil},
  {title: "Best Class ", location: "best", credits: 3.0, learning_objective_1: "bestbestbestbestbestbestbest", learning_objective_2: "bestbestbestbestbestbestbestbestbest", learning_objective_3: "bestddbestbestbestd", start_date: "2017-01-01", end_date: "2018-01-01", published: true, instructor_id: 1, evaluation_id: nil},
  {title: "Meh", location: "meh", credits: 2.0, learning_objective_1: "mbestbestbestbestbesteh", learning_objective_2: "bestbestbestbestbestbest", learning_objective_3: "bestbestbestbestbestbestmeh", start_date: "2018-01-02", end_date: "2018-01-02", published: true, instructor_id: 3, evaluation_id: nil},
  {title: "Damn Kid", location: "In Town", credits: 2.0, learning_objective_1: "lkjsdfsdfsdfsdfsf", learning_objective_2: "sfdsfsfsdf", learning_objective_3: "sdfsdfsdfsd", start_date: "2018-03-01", end_date: "2018-04-01", published: true, instructor_id: 1, evaluation_id: nil},
  {title: "Demo Course For The Demo Recording You Are Doing Now", location: "Testtest", credits: 3.0, learning_objective_1: "TesttestTesttest", learning_objective_2: "TesttestTesttest", learning_objective_3: "TesttestTesttestTesttest", start_date: "2018-09-01", end_date: "2018-10-01", published: true, instructor_id: 1, evaluation_id: nil},
])
Evaluation.create!([
  {name: "Standard Evaluation!", course_id: 10},
  {name: "Non-Standard ", course_id: 1},
  {name: "Test Eval", course_id: 13},
  {name: "Aye yo - this is for flannel selfies", course_id: 3},
  {name: "BK Blog", course_id: 7},
  {name: "Distruped Off", course_id: 9},
  {name: "Fun times", course_id: 15},
  {name: "Chillwave", course_id: 6},
  {name: "Test for scope 2", course_id: 2},
  {name: "Best Class", course_id: 24},
  {name: "Demo Eval", course_id: 27}
])
# EvaluationQuestion.create!([
#   {evaluation_id: 1, question_id: 2},
#   {evaluation_id: 1, question_id: 1},
#   {evaluation_id: 1, question_id: 3},
#   {evaluation_id: 1, question_id: 4},
#   {evaluation_id: 3, question_id: 1},
#   {evaluation_id: 4, question_id: 1},
#   {evaluation_id: 4, question_id: 2},
#   {evaluation_id: 3, question_id: 6},
#   {evaluation_id: 5, question_id: 1},
#   {evaluation_id: 5, question_id: 2},
#   {evaluation_id: 5, question_id: 3},
#   {evaluation_id: 5, question_id: 4},
#   {evaluation_id: 5, question_id: 5},
#   {evaluation_id: 5, question_id: 6},
#   {evaluation_id: 5, question_id: 7},
#   {evaluation_id: 6, question_id: 1},
#   {evaluation_id: 7, question_id: 2},
#   {evaluation_id: 7, question_id: 3},
#   {evaluation_id: 8, question_id: 1},
#   {evaluation_id: 8, question_id: 2},
#   {evaluation_id: 8, question_id: 3},
#   {evaluation_id: 8, question_id: 5},
#   {evaluation_id: 9, question_id: 6},
#   {evaluation_id: 5, question_id: 9},
#   {evaluation_id: 10, question_id: 10},
#   {evaluation_id: 10, question_id: 1},
#   {evaluation_id: 10, question_id: 2},
#   {evaluation_id: 10, question_id: 3},
#   {evaluation_id: 10, question_id: 4},
#   {evaluation_id: 10, question_id: 5},
#   {evaluation_id: 10, question_id: 6},
#   {evaluation_id: 10, question_id: 7},
#   {evaluation_id: 10, question_id: 8},
#   {evaluation_id: 10, question_id: 9},
#   {evaluation_id: 10, question_id: 11},
#   {evaluation_id: 11, question_id: 1},
#   {evaluation_id: 11, question_id: 2},
#   {evaluation_id: 11, question_id: 3},
#   {evaluation_id: 11, question_id: 4},
#   {evaluation_id: 11, question_id: 5},
#   {evaluation_id: 11, question_id: 6},
#   {evaluation_id: 11, question_id: 8},
#   {evaluation_id: 11, question_id: 9},
#   {evaluation_id: 11, question_id: 10},
#   {evaluation_id: 11, question_id: 11},
#   {evaluation_id: 9, question_id: 17},
#   {evaluation_id: 9, question_id: 18},
#   {evaluation_id: 9, question_id: 19},
#   {evaluation_id: 12, question_id: 12},
#   {evaluation_id: 12, question_id: 15},
#   {evaluation_id: 12, question_id: 16},
#   {evaluation_id: 12, question_id: 17},
#   {evaluation_id: 12, question_id: 18},
#   {evaluation_id: 12, question_id: 19},
#   {evaluation_id: 12, question_id: 20}
# ])

Question.create!([
  {content: "What is a duck?", text: true, instructor_id: 1},
  {content: "This is a real question?", text: true, instructor_id: 1},
  {content: "What time is it?", text: true, instructor_id: 1},
  {content: "How are you really?", text: 1, instructor_id: 1},
  {content: "Are you 9?", text: true, instructor_id: 1},
  {content: "How was this course mr?", text: false, instructor_id: 1},
  {content: "Flannelde", text: false, instructor_id: 1},
  {content: "How good was this class?", text: 1, instructor_id: 1},
  {content: "How good was this class really?", text: 1, instructor_id: 1},
  {content: "Boosh", text: 1, instructor_id: 1},
  {content: "What are I now?", text: false, instructor_id: 1},
  {content: "This is new question with an instructor ID", text: true, instructor_id: 1},
  {content: "Testd", text: true, instructor_id: 1},
  {content: "Still workers?", text: false, instructor_id: 1},
  {content: "This is a tester?", text: true, instructor_id: 1},
  {content: "Fun?", text: true, instructor_id: 1},
  {content: "This is a text question 1", text: true, instructor_id: 1},
  {content: "Text questions 2", text: true, instructor_id: 1},
  {content: "Text questions 3", text: true, instructor_id: 1},
  {content: "This is for the demo recording?", text: true, instructor_id: 1}
])
CourseAttendee.create!([
  {attendee_id: 10, course_id: 11},
  {attendee_id: 3, course_id: 1},
  {attendee_id: 3, course_id: 3},
  {attendee_id: 3, course_id: 16},
  {attendee_id: 3, course_id: 20},
  {attendee_id: 1, course_id: 21},
  {attendee_id: 3, course_id: 7},
  {attendee_id: 20, course_id: 7},
  {attendee_id: 20, course_id: 9},
  {attendee_id: 22, course_id: 13},
  {attendee_id: 22, course_id: 3},
  {attendee_id: 14, course_id: 16},
  {attendee_id: 14, course_id: 18},
  {attendee_id: 9, course_id: 14},
  {attendee_id: 9, course_id: 18},
  {attendee_id: 9, course_id: 19},
  {attendee_id: 23, course_id: 17},
  {attendee_id: 24, course_id: 17},
  {attendee_id: 25, course_id: 6},
  {attendee_id: 26, course_id: 6},
  {attendee_id: 27, course_id: 1},
  {attendee_id: 28, course_id: 1},
  {attendee_id: 21, course_id: 13},
  {attendee_id: 21, course_id: 14},
  {attendee_id: 21, course_id: 16},
  {attendee_id: 21, course_id: 17},
  {attendee_id: 21, course_id: 18},
  {attendee_id: 21, course_id: 19},
  {attendee_id: 1, course_id: 1},
  {attendee_id: 1, course_id: 2},
  {attendee_id: 1, course_id: 3},
  {attendee_id: 1, course_id: 4},
  {attendee_id: 1, course_id: 5},
  {attendee_id: 1, course_id: 6},
  {attendee_id: 1, course_id: 7},
  {attendee_id: 1, course_id: 8},
  {attendee_id: 1, course_id: 9},
  {attendee_id: 1, course_id: 10},
  {attendee_id: 1, course_id: 11},
  {attendee_id: 8, course_id: 1},
  {attendee_id: 8, course_id: 2},
  {attendee_id: 8, course_id: 4},
  {attendee_id: 8, course_id: 10},
  {attendee_id: 8, course_id: 11},
  {attendee_id: 8, course_id: 12},
  {attendee_id: 8, course_id: 16},
  {attendee_id: 8, course_id: 17},
  {attendee_id: 8, course_id: 25},
  {attendee_id: 8, course_id: 27}
])
AdminUser.create!(email: 'admin@example.com', password: 'asdasd11', password_confirmation: 'asdasd11') 