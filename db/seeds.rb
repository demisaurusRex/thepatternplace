# require 'open-uri'




# print `rails db:drop`
# puts "Creating database"
# print `rails db:create`
# puts "Database created"
# print `rails db:migrate`

# puts "Creating users..."
# User.create(username: "stephen123", email: "stephen@test.com", password: "123456")
# User.create(username: "demi123", email: "demi@test.com", password: "123456")
# User.create(username: "yatin123", email: "yatin@test.com", password: "123456")
# User.create(username: "pizza123", email: "pizza@pasta.com", password: "123456")
# puts 'Users created'


# seed_images = [
#   {
#     images: [
#       "#{Rails.root}/seedimages/seed1_image1.jpg",
#       "#{Rails.root}/seedimages/seed1_image2.jpg",
#       "#{Rails.root}/seedimages/seed1_image3.jpg"
#     ],
#     fabric: "#{Rails.root}/seedimages/seed1_fabric.jpg",
#     sizing: "#{Rails.root}/seedimages/seed1_sizing.jpg"
#   },
#   {
#     images: [
#       "#{Rails.root}/seedimages/seed2_image1.jpg",
#       "#{Rails.root}/seedimages/seed2_image2.jpg",
#     ],
#     fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
#     sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
#   },
#   {
#     images: [
#       "#{Rails.root}/seedimages/seed3_image1.webp",
#       "#{Rails.root}/seedimages/seed2_image2.jpg",
#     ],
#     fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
#     sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
#   },
#   {
#     images: [
#       "#{Rails.root}/seedimages/seed4_image1.webp",
#       "#{Rails.root}/seedimages/seed2_image2.jpg",
#     ],
#     fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
#     sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
#   },
#   {
#     images: [
#       "#{Rails.root}/seedimages/seed5_image1.webp",
#       "#{Rails.root}/seedimages/seed2_image2.jpg",
#     ],
#     fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
#     sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
#   },
#   {
#     images: [
#       "#{Rails.root}/seedimages/seed6_image1.png",
#       "#{Rails.root}/seedimages/seed2_image2.jpg",
#     ],
#     fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
#     sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
#   },
#   {
#     images: [
#       "#{Rails.root}/seedimages/seed7_image1.jpeg",
#       "#{Rails.root}/seedimages/seed2_image2.jpg",
#     ],
#     fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
#     sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
#   },
#   {
#     images: [
#       "#{Rails.root}/seedimages/seed8_image1.png",
#       "#{Rails.root}/seedimages/seed2_image2.jpg",
#     ],
#     fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
#     sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
#   },
#   {
#     images: [
#       "#{Rails.root}/seedimages/seeds9_image1.jpeg",
#       "#{Rails.root}/seedimages/seed2_image2.jpg",
#     ],
#     fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
#     sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
#   }
# ]

# patterns = [
#   {
#     title: "Vogue Misses Special Occasion Dress",
#     description: "Dress is fitted through bust and hip with lined body, unlined sleeve and flounce, purchased bias tape to finish armhole edge, narrow hems and length and trim variations. B: Purchased trim.",
#     difficulty: "easy",
#     price: 10
#   },
#   {
#     title: "Make by TFS - Cass Pant",
#     description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
#     difficulty: "hard",
#     price: 22
#   },
#   {
#     title: "Brown Striped Pant",
#     description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
#     difficulty: "easy",
#     price: 50
#   },
#   {
#     title: "Fancy Checked Warm Top",
#     description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
#     difficulty: "hard",
#     price: 35
#   },
#   {
#     title: "Plain Black Pant",
#     description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
#     difficulty: "hard",
#     price: 20
#   },
#   {
#     title: "Beach Shirt",
#     description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
#     difficulty: "hard",
#     price: 22
#   },
#   {
#     title: "Woman Kurta top",
#     description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
#     difficulty: "hard",
#     price: 15
#   },
#   {
#     title: "Crop Top Holly",
#     description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
#     difficulty: "medium",
#     price: 22
#   },
#   {
#     title: "Comfy summer Dress",
#     description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
#     difficulty: "easy",
#     price: 25
#   }
# ]

# puts 'patterns created'

# user_last = User.last.id

# patterns.each do |pattern|
#   pattern = Pattern.new(
#     title: pattern[:title],
#     user_id: rand(1..user_last),
#     description: pattern[:description],
#     difficulty: ["Easy", "Medium", "Hard"].sample,
#     price: pattern[:price],
#     instruction_format: ["Print", "Interactive"].sample
#   )
#   pattern.save
# end

# puts 'patterns created'

# seed_images.each_with_index do |seed_image, index|
#   pattern = Pattern.find(index + 1)
#   seed_image[:images].each_with_index do |image, image_index|
#     pattern.image.attach(
#       io: File.open(image),
#       filename: "image_#{index + 1}#{image_index}.jpg",
#       content_type: "image/jpg"
#     )
#   end

#   pattern.fabric_usage.attach(
#     io: File.open(seed_image[:fabric]),
#     filename: "fabric_#{index + 1}.jpg",
#     content_type: "image/jpg")
#   pattern.sizing.attach(
#     io: File.open(seed_image[:sizing]),
#     filename: "sizing_#{index + 1}.jpg",
#     content_type: "image/jpg"
#   )
# end

# puts Category.create!(pattern_id: 2, name: "Back Welt Pocket", position: 1)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
        "First we will begin with constructing the back pieces. Take your back leg pieces and neaten centre back and inner leg edges separately. Sew the two darts on the back trouser piece. Press the darts towards the centre back. Apply the jet pocket opening interfacing as indicated on the Jet Pocket Template to the wrong side of the pants. Take your time to centre your interfacing over the dart points exactly. The fusing should extend 3.5cm either side of the dart points and 1.6cm above and below. Repeat for the other side.",
        "Fold and pin the jet pieces in half with the wrong sides together and stitch them closed with a 6mm seam.",
        "Fold button loop in half, press then open out again. Bring outer edges to meet in the centre and fold
        in half lengthwise again and press. Edgestitch to close.",
        "Sew the darts at both ends of the jet pocket bag with the wrong sides together. The dart excess will\
        be on the right side of the pocket bag. Neaten the unnotched edge of the jet pocket bearer. Pin the\
        jet pocket facing to the pocket bag, wrong side of jet pocket facing to right side of pocket bag,\
        matching up the notches.\
        Edgestitch in place.",
        "Transfer the jet pocket opening markings from the Jet Pocket Template to the right side of your\
        back trouser piece. Make sure you use chalk or a pen that comes o easily once you’re nished. The\
        line will go through the dart points and extend 2.5cm past each dart point, measuring 13cm in total\
        (for all sizes). Transfer the same marking to the right side of your jet pocket bag, as shown below.",
        "With the back leg in front of you, right side up, place the button loop, folded as shown, in the centre\
        of the pocket, at the point indicated on the back pocket template. Line the raw edges up with the\
        slash line. Baste in place.",
        "Line up the raw edges of the two jet pieces with the slash line. The notches on the jet pieces will\
        align with the end of the slash line. Ensure that all edges line up and that everything is centred. Pin,\
        then sew the jets in place with a 6mm seam, stopping exactly at the point indicated on the pattern.\
        It can help to mark the end of your stitching on the jet pieces to make sure you stop at the right\
        place.",
        "Lay the jet pocket bag on top of the jets with the right side down. The jet pocket bearer will be\
        towards the hem of the pants, facing down. Pin everything in place, then sew the pocket down\
        along the same lines as the jet pieces.",
        "Cut through both the layers along the slash line. Finish 1cm before the end of your stitching. Next,\
        clip into the corners through all layers.",
        "Pull the pocket and the ends of the jet pieces through to the wrong side.",
        "Neaten the raw edge of the lower jet with your overlocker. Make sure you hold the pocket bag and back leg piece out of the way so they don’t get caught!",
        "Fold back the trouser leg piece and pocket bag to find the little triangle that was created when you\
        cut the pocket open. Wriggle the pieces so they site at with the folded edges touching and the\
        short edges are even. Pull the triangle tab so it sits as at as possible without distorting the fabric.\
        Stitch the triangle to the jet pocket bag and jet pieces, back tacking to secure. Repeat for the other\
        side.",
        "Press your jet pocket, making sure everything is lying at.",
        "Fold the trouser leg to t inside the upper section of the pocket bag piece.",
        "Fold the pocket bag in half with wrong sides together and sew with a 6mm seam. Trim the seam.\
        Pull the back leg out through the opening at the waist of the pocket bag. Press the pocket and stitch
        again at 6mm to form a French seam. Press again.",

        "Baste the top of the pocket bag to the top edge of the back leg piece.",

        "With the leg face up, edge stitch around the top three sides of the jet pocket to secure it to the
        pocket bag.
        Repeat for the other side."
    ]
  }
]


instructions.each_with_index do |instruction, index|
  instruction[:steps].each_with_index do |step, step_index|
    instruction = Instruction.new(
      pattern_id: instruction[:pattern_id],
      description: step,
      category_id: 1,
      position: step_index + 1
    )
    instruction.image.attach(
        io: File.open("#{Rails.root}/seedimages/instructions_seed_images/pattern_2/#{step_index + 1}.png"),
        filename: "image_2_#{step_index + 1}.png",
        content_type: "image/png"
    )
    puts instruction.save!
  end
end
puts 'Instructions added'
