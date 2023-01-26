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

<<<<<<< Updated upstream
# puts Category.create!(pattern_id: 2, name: "Back Welt Pocket", position: 1)
=======
puts Category.create!(pattern_id: 2, name: "Back Darts", position: 1)
>>>>>>> Stashed changes

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
        "First we will begin with constructing the back pieces. Take your back leg pieces and neaten centre back and inner leg edges separately. Sew the two darts on the back trouser piece. Press the darts towards the centre back.",
    ]
  }
]

puts Category.create!(pattern_id: 2, name: "Back Welt Pocket", position: 2)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
      "Apply the jet pocket opening interfacing as indicated on the Jet Pocket Template to the wrong side of the pants. Take your time to centre your interfacing over the dart points exactly. The fusing should extend 3.5cm either side of the dart points and 1.6cm above and below. Repeat for the other side.",
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

puts Category.create!(pattern_id: 2, name: "Front Fly Construction", position: 3)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
      "Take your front pieces and neaten the centre front and inner leg edge of each front piece separately.
      Next neaten the curved edge of fly facing.",
      "Take your fly guard pieces and with right sides together, stitch around the curved edge and the
      buttonhole extension with a 6mm seam, finishing at the notch on the waistline.
      Clip into the end of the seam at the waistline and trim the corners.
      Notch and clip the curves then turn out using a point turner to help. Press the fly guard.
      Sew the buttonhole as indicated on the pattern. You can wait to sew this at the same time as the waistband buttonhole,
      though it may be a bit trickier to manoeuvre, as the pants will be fully assembled at that point.
      Neaten the long straight edges of the fly guard together.",
      "Take the right front leg and the fly facing pieces. With the right sides together, align the straight edge of the fly facing
      to the centre front edge of the right front leg. Make sure the waist edge and notches match.
      Pin in place and then sew the length of the fly facing with a 1cm seam.",
      "Press seam towards facing then under stitch. Fold the facing back along the seam, wrong sides together.
      Press it gently and put aside.",
      "With the left front leg facing up, place the fly right side down on the pattern piece. Align the left
      edge of the zip tape (as you are looking at it upside down) with the centre front edge of the pattern
      piece. The zip stop at the bottom of the zip will be at the notch and the tape tails will fall below the
      notch. Pin the zip in place and then stitch down 6mm from the edge of the zip tape using a zip foot.",
      "Keeping the left front leg facing up and the zip face down, place the fly guard on top of the zip so
      the zip is in between the leg piece and the fly barrier. Make sure the straight edges align and the
      notches match. Pin together through all layers and stitch together with a 1cm seam.",
      "Fold the zip and the fly guard out so the zip, fly guard and left leg are all right side up. Press the left
      leg piece along the fold line next to the zip teeth. Edge stitch on the left front leg down length of
      the zip.",
      "Take your right and left front pieces and place them right sides together, aligning the pieces through
      the crotch seam. Pin the front crotch, then sew closed at 1cm, starting about 5cm from the inner leg
      and finishing at the notch. Sew as close as you can to the fly facing seam but take care not to catch
      the fly facing or fly guard when sewing.",
      "Clip into the seam allowance on the left side only, at the base of the fly facing. Be careful not to clip
      through the seam. Press the front crotch seam open.",
      "Flip the pants over so the left leg is facing up. Fold back the fly guard so the zip is showing. Pin it
      out of the way if that helps. Making sure that everything is lying flat, pin the zip to the fly facing.
      Using a zip foot, sew the zip down 6mm from the edge of the zip tape."
      "Using the fly facing pattern piece and the markings on the Right Front Leg pattern piece as a guide,
      draw on the shape of your fly top stitching using chalk or fabric pen. Make sure the chalk or pen
      can brush or wash off easily, so you are not left with marks on the front of your pants!
      Pull the fly guard out of the way, pinning it if necessary. Pin the fly facing to the front, making sure
      everything is laying smooth and flat.
      Starting at the waist topstitch the fly facing in place. Stop just before you get to the start of the
      curve. Release the fly guard and lie it flat underneath the zip and fly facing. Pin it to hold it in place.
      Starting a couple of stitches up from where you left off, continue sewing the remaining curved
      section of the fly top stitching. Stop when you reach the centre front seam and back tack to secure."
    ]
  }
]

puts Category.create!(pattern_id: 2, name: "Front Pleats", position: 4)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
      "Next move on to sewing the front pleats!
      Right sides together, fold the front pleats in half at the centre notch, matching the other two notches. From the waist stitch down the pleat, finishing at the + mark indicated on the pattern. Press the
      pleat excess towards the centre front. The pleat will open to the side seam. Baste the top of the
      pleat in place at the waist edge, within the seam allowance. Gently press the pleat and repeat for
      the other side."
    ]
  }
]

puts Category.create!(pattern_id: 2, name: "Side Pockets", position: 5)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
      "Neaten the long, un-notched edge of the side pocket bearer piece. Place the wrong side of the
      pocket bearer to the right side of the pocket bag, matching the notches. Edge stitch around the
      entire pocket bearer piece to hold it in place.",
      "With the right sides together, match up the right front and right pocket bag pieces at the pocket
      opening and pin in place. Sew this seam and press the seam towards the pocket bag.",
      "Under stitch on the pocket bag.",
      "Fold the pocket bag to the inside of the leg and press again. Topstitch 6mm from the edge along the
      pocket opening.",
      "Fold the pocket bag in half at the centre line, wrong sides together. This is the opposite to the way
      you pressed this piece at the beginning. Pin in the bottom edge place then sew with a 5mm seam.
      Trim the seam to 3mm then turn the pocket out so the right sides are together.",
      "Use a point to ensure the corner is fully turned out and press. Sew the bottom edge again at 5mm to
      enclose the seam.",
      "Matching the notches, baste the pocket bag to the side seam and waist seam of the front pant
      piece within the seam allowance. Repeat for other side.",
    ]
  }
]

puts Category.create!(pattern_id: 2, name: "Construct Belt Loops", position: 6)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
      "Finish one long edge of the belt loop pieces with an overlocker/serger. Fold the belt loops into three
      lengthways with the finish edge on top. Edge stitch the length of the belt loops on each side cut belt
      loops into thirds. You will have six pieces in total."
    ]
  }
]

puts Category.create!(pattern_id: 2, name: "Construct Waistband", position: 7)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
      "With right sides together pin and sew the centre back seam of the waistband. Repeat with the
      waistband facing. Press seams open.",
      "Finish the bottom edge of the waistband facing by attaching bias binding. You could also neaten
      this with an overlocker if you prefer.",
      "With right sides together, pin the waistband outer to the waistband facing along the top edge. Sew
      this seam and the press seam towards the facing.",
      "Under stitch the waistband on the waistband facing.",
      "Fold the waistband in half lengthwise with right sides together. Sew the short ends closed with a
      1cm seam, stopping 1cm before the raw edge.",
      "Turn the waistband right sides out using a point turner to ensure you get a tidy corner. Press."
    ]
  }
]

puts Category.create!(pattern_id: 2, name: "Inner Seams", position: 8)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
     "With right sides together pin the front to the back at the inner seam, matching the notches. Sew
     the seam and press open. Repeat for the other side.",
     "With right sides together complete the crotch seam. Start at the centre back and sew the back
     curve, continuing to the front, finishing just past the where you left off when sewing the fly. Press
     the seam open."
    ]
  }
]

puts Category.create!(pattern_id: 2, name: "Outer Seams", position: 9)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
      "With the right sides together, pin the left front piece to the left back piece at the side seam matching notches. Sew the seam then finish with an overlocker/serger and press towards the back.
      Repeat for the other side."
    ]
  }
]

puts Category.create!(pattern_id: 2, name: "Attaching Belt Loops and Waistband", position: 10)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
      "Attach belt loops as indicated. Secure in place by sewing at the waist, 2cm from the raw edge.",
      "Pin waistband to the pants match the notches, centre back seams. Sew the waistband outer to the
      pants with the right sides together. Leave the facing free. Press the seam up, into the waistband. Note — If your machine’s buttonhole foot is particularly long, you may prefer to do your buttonhole now before completing your belt loops.
      Fold the free end of the belt loops under 1cm and pin in place so the edge is flush with the top of
      the waistband. Secure in place with a row of stitching, back tacking at the beginning and end.
      Flatten the belt loop and secure the bottom edge with stitching in the same way as the top. Repeat
      for all belt loops.",
      "Sew a buttonhole as indicated on the waistband pattern piece. If your button varies in size to the
      recommended you will need to adjust the length of your buttonhole accordingly",
      "Sew a buttonhole on the fly barrier extension if you haven’t done so already.",
    ]
  }
]

puts Category.create!(pattern_id: 2, name: "Hems", position: 11)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
      "Next we move on to the hems.
      At the bottom of your pants, fold under and press 1cm seam allowance, then fold up another 4cm
      for the hem. Edge stitch in place and press. Repeat for the other side. Depending on the thickness
      of your fabric you may wish to just overlock the raw hem, and then fold up at the notch to eliminate
      excess bulk."
    ]
  }
]

puts Category.create!(pattern_id: 2, name: "Buttons and finishes", position: 12)

puts 'Adding Instructions'
instructions = [
  {
    pattern_id: 2,
    steps:
    [
      "Sew on buttons on your back jet pockets and on the waistband, as indicated on the pattern. When
      sewing on the internal button take extra care that the stitches do not come through to the right side.",
      "Next, sew buttons on your back pockets.",
      "Clip your loose threads and give your garment a final press. All complete!"
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
