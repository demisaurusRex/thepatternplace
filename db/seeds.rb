require 'open-uri'




print `rails db:drop`
puts "Creating database"
print `rails db:create`
puts "Database created"
print `rails db:migrate`

puts "Creating users..."
User.create(username: "StephenChoo", email: "stephen@test.com", password: "123456")
User.create(username: "Demisaurus", email: "demi@test.com", password: "123456")
User.create(username: "Yatin", email: "yatin@test.com", password: "123456")
User.create(username: "PizzaPasta", email: "pizza@pasta.com", password: "123456")
puts 'Users created'


seed_images = [
  {
    images: [
      "#{Rails.root}/seedimages/seed1_image1.jpg",
      "#{Rails.root}/seedimages/seed1_image2.jpg",
      "#{Rails.root}/seedimages/seed1_image3.jpg"
    ],
    fabric: "#{Rails.root}/seedimages/seed1_fabric.jpg",
    sizing: "#{Rails.root}/seedimages/seed1_sizing.jpg"
  },
  {
    images: [
      "#{Rails.root}/seedimages/seed2_image1.jpg",
      "#{Rails.root}/seedimages/seed2_image2.jpg",
    ],
    fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
    sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
  },
  {
    images: [
      "#{Rails.root}/seedimages/seed3_image1.webp",
      "#{Rails.root}/seedimages/seed2_image2.jpg",
    ],
    fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
    sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
  },
  {
    images: [
      "#{Rails.root}/seedimages/seed4_image1.webp",
      "#{Rails.root}/seedimages/seed2_image2.jpg",
    ],
    fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
    sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
  },
  {
    images: [
      "#{Rails.root}/seedimages/seed5_image1.webp",
      "#{Rails.root}/seedimages/seed2_image2.jpg",
    ],
    fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
    sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
  },
  {
    images: [
      "#{Rails.root}/seedimages/seed6_image1.png",
      "#{Rails.root}/seedimages/seed2_image2.jpg",
    ],
    fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
    sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
  },
  {
    images: [
      "#{Rails.root}/seedimages/seed7_image1.jpeg",
      "#{Rails.root}/seedimages/seed2_image2.jpg",
    ],
    fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
    sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
  },
  {
    images: [
      "#{Rails.root}/seedimages/seed8_image1.png",
      "#{Rails.root}/seedimages/seed2_image2.jpg",
    ],
    fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
    sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
  },
  {
    images: [
      "#{Rails.root}/seedimages/seeds9_image1.jpeg",
      "#{Rails.root}/seedimages/seed2_image2.jpg",
    ],
    fabric: "#{Rails.root}/seedimages/seed2_fabric.jpg",
    sizing: "#{Rails.root}/seedimages/seed2_sizing.jpg"
  }
]

patterns = [
  {
    title: "Vogue Misses Special Occasion Dress",
    description: "Dress is fitted through bust and hip with lined body, unlined sleeve and flounce, purchased bias tape to finish armhole edge, narrow hems and length and trim variations. B: Purchased trim.",
    difficulty: "easy",
    price: 10
  },
  {
    title: "Make by TFS - Cass Pant",
    description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
    difficulty: "hard",
    price: 22
  },
  {
    title: "Ivy Dress Top",
    description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
    difficulty: "medium",
    price: 50
  },
  {
    title: "Fancy Checked Warm Top",
    description: "Ivy is an everyday staple - a modern dress + top pattern with options galore!
    The Dress (View A) features a boxy straight-t through the bodice with a dropped waist and generous gathered full
    skirt, in seam pockets and a deep turned-back hem. The Top (View B) features a fully faced peplum-style hem. Both
    views have a centre back neck opening and three collar options are provided, including a Peter Pan Collar, fully faced
    Round Neck, or a Tie Back Collar.",
    difficulty: "hard",
    price: 35
  },
  {
    title: "Plain Black Pant",
    description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
    difficulty: "hard",
    price: 20
  },
  {
    title: "Beach Shirt",
    description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
    difficulty: "hard",
    price: 22
  },
  {
    title: "Woman Kurta top",
    description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
    difficulty: "hard",
    price: 15
  },
  {
    title: "Crop Top Holly",
    description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
    difficulty: "medium",
    price: 22
  },
  {
    title: "Comfy summer Dress",
    description: "The Cass Pant is a modern take on a classic pleat front trouser and is designed to complement your existing wardrobe. This style of trouser pairs nicely with merino tops and button-down shirts. It features a casual mid-rise, zip fly front with internal button tab closure, belt loops, side angled pockets, two rear jet pockets, and a wide leg with a subtle taper and deep hem at the ankle. Cass comes as a single view, and you can lengthen or shorten the leg as you wish!",
    difficulty: "easy",
    price: 25
  }
]

puts 'patterns created'

user_last = User.last.id

patterns.each do |pattern|
  pattern = Pattern.new(
    title: pattern[:title],
    user_id: rand(1..user_last),
    description: pattern[:description],
    difficulty: ["Easy", "Medium", "Hard"].sample,
    price: pattern[:price],
    instruction_format: ["Print", "Interactive"].sample
  )
  pattern.save
end

puts 'patterns created'

seed_images.each_with_index do |seed_image, index|
  pattern = Pattern.find(index + 1)
  seed_image[:images].each_with_index do |image, image_index|
    pattern.image.attach(
      io: File.open(image),
      filename: "image_#{index + 1}#{image_index}.jpg",
      content_type: "image/jpg"
    )
  end

  pattern.fabric_usage.attach(
    io: File.open(seed_image[:fabric]),
    filename: "fabric_#{index + 1}.jpg",
    content_type: "image/jpg")
  pattern.sizing.attach(
    io: File.open(seed_image[:sizing]),
    filename: "sizing_#{index + 1}.jpg",
    content_type: "image/jpg"
  )
end

puts 'Adding Instructions'
instructions =
  [
    {
      category: {
        pattern_id: 2,
        name: "Back Darts",
        position: 1
      },
      pattern_id: 2,
      steps:
      [
          "First we will begin with constructing the back pieces. Take your back leg pieces and neaten centre back and inner leg edges separately. Sew the two darts on the back trouser piece. Press the darts towards the centre back.",
      ]
    },
    {
      category: {
        pattern_id: 2,
        name: "Back Welt Pocket",
        position: 2
      },
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
    },
    {
      category: {
        pattern_id: 2,
        name: "Front Fly Construction",
        position: 3
      },
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
      Using a zip foot, sew the zip down 6mm from the edge of the zip tape.",
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
    },
    {
      category: {
        pattern_id: 2,
        name: "Front Pleats",
        position: 4
      },
      pattern_id: 2,
      steps:
      [
        "Next move on to sewing the front pleats!
        Right sides together, fold the front pleats in half at the centre notch, matching the other two notches. From the waist stitch down the pleat, finishing at the + mark indicated on the pattern. Press the
        pleat excess towards the centre front. The pleat will open to the side seam. Baste the top of the
        pleat in place at the waist edge, within the seam allowance. Gently press the pleat and repeat for
        the other side."
      ]
    },
    {
      category: {
        pattern_id: 2,
        name: "Side Pockets",
        position: 5
      },
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
    },
    {
      category: {
        pattern_id: 2,
        name: "Construct Belt Loops",
        position: 6
      },
      pattern_id: 2,
      steps:
      [
        "Finish one long edge of the belt loop pieces with an overlocker/serger. Fold the belt loops into three
      lengthways with the finish edge on top. Edge stitch the length of the belt loops on each side cut belt
      loops into thirds. You will have six pieces in total."
      ]
    },
    {
      category: {
        pattern_id: 2,
        name: "Construct Waistband",
        position: 7
      },
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
    },
    {
      category: {
        pattern_id: 2,
        name: "Inner Seams",
        position: 8
      },
      pattern_id: 2,
      steps:
      [
        "With right sides together pin the front to the back at the inner seam, matching the notches. Sew
     the seam and press open. Repeat for the other side.",
     "With right sides together complete the crotch seam. Start at the centre back and sew the back
     curve, continuing to the front, finishing just past the where you left off when sewing the fly. Press
     the seam open."
      ]
    },
    {
      category: {
        pattern_id: 2, name: "Outer Seams", position: 9
      },
      pattern_id: 2,
      steps:
      [
        "With the right sides together, pin the left front piece to the left back piece at the side seam matching notches. Sew the seam then finish with an overlocker/serger and press towards the back.
        Repeat for the other side."
      ]
    },
    {
      category: {
        pattern_id: 2, name: "Attaching Belt Loops and Waistband", position: 10
      },
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
    },
    {
      category: {
        pattern_id: 2, name: "Hems", position: 11
      },
      pattern_id: 2,
      steps:
      [
        "Next we move on to the hems.
      At the bottom of your pants, fold under and press 1cm seam allowance, then fold up another 4cm
      for the hem. Edge stitch in place and press. Repeat for the other side. Depending on the thickness
      of your fabric you may wish to just overlock the raw hem, and then fold up at the notch to eliminate
      excess bulk."
      ]
    },
    {
      category: {
        pattern_id: 2, name: "Buttons and finishes", position: 12
      },
      pattern_id: 2,
      steps:
      [
        "Sew on buttons on your back jet pockets and on the waistband, as indicated on the pattern. When
      sewing on the internal button take extra care that the stitches do not come through to the right side. Next, sew buttons on your back pockets. Clip your loose threads and give your garment a final press. All complete!"
      ]
    }
  ]

count = 1
instructions.each_with_index do |instruction, index|
  category = Category.create(
    pattern_id: instruction[:category][:pattern_id],
    name: instruction[:category][:name],
    position: instruction[:category][:position]
  )
  instruction[:steps].each_with_index do |step, step_index|
    instruction = Instruction.new(
      pattern_id: instruction[:pattern_id],
      description: step,
      category_id: category.id,
      position: step_index + 1
    )
    instruction.image.attach(
        io: File.open("#{Rails.root}/seedimages/instructions_seed_images/pattern_2/#{count}.png"),
        filename: "image_2_#{step_index + 1}.png",
        content_type: "image/png"
    )
    puts instruction.save!
    count += 1
  end
end
puts 'Instructions added'

puts 'Adding Instructions'
instructions2 =
  [
    {
      category: {
        pattern_id: 3,
        name: "Bodice",
        position: 1
      },
      pattern_id: 3,
      steps:
      [
        "First we will begin with constructing the bodice. This step is the same for both the Top and Dress view. Stay stitch the front bodice neckline.",
        "On the front bodice, pin the darts and then sew them from the side seam, towards the dart point. Press the dart excess
        down.",
        "Neaten the sides and shoulders of the front bodice.",
        "Stay stitch neckline of back bodice pieces.",
        "Neaten the sides, centre back and shoulder edges of the of back bodice. Take care not to stretch out the edges when
        overlocking, especially at the shoulders. If you are sewing the Peter Pan collar or Round Neck option, you will now sew the button loop."
      ]
    },
    {
      category: {
        pattern_id: 3,
        name: "Button loops bodice ONLY",
        position: 2
      },
      pattern_id: 3,
      steps:
      [
        "Fold the button loop as shown as per your pressing at the beginning and edge stitch it closed. Now fold the piece to
        form a loop. Pin the button loop on the right side of the left back bodice piece at centre back, 1cm down from the neck edge. Align
        the raw edges with the centre back. Baste in place. "
      ]
    },
    {
      category: {
        pattern_id: 3,
        name: "Bodice Cont.",
        position: 3
      },
      pattern_id: 3,
      steps:
      [
        "With the right sides together, pin, then sew the two back bodice pieces together at centre back from the notch to the
        waist edge. Press the seam open.",
        "Pin the front shoulder to the back shoulder with the right sides together and sew them with a 1cm seam. Repeat for both
        shoulders. Press the seams open.
        Sew the side seams together and press open."
      ]
    },
    {
      category: {
        pattern_id: 3,
        name: "Peter Pan Collar",
        position: 4
      },
      pattern_id: 3,
      steps:
      [
        "With right sides together, sew one top collar piece to an under collar piece around the long, curved edge.
        Trim the seam at the curved edge.",
        "Fold the seam allowance at centre back end towards the under collar. Pin the centre back and then sew the centre back
        seam, catching the seam allowance as you sew. Turn the collar right side out and under stitch at centre back for as far as you can comfortably sew, and along the outer
        collar where the collar will sit over the shoulder. Give it a press, rolling the collar piece slightly towards under collar as
        you go. Repeat for the other side.",
        "Baste the collar to the neck edge, with under collar facing the right side of the bodice. The centre back of the collar will
        align with the notch at centre back on the bodice.",
        "The two collar pieces will meet at the centre front notch. Sew the collar pieces to the bodice, just inside the seam
        allowance.",
        "Stitch the neck facing at the centre back from the notch to the lower edge.
        Press the seam open then neaten the outer edge.
        With right sides together, pin the neck facing to the bodice at centre back. Now sew each centre back edge together
        with a 1cm seam, starting at the neck edge and finishing at the notch.",
        "Next, fold the facing to the wrong side so the wrong sides are together, then under stitch each edge at the centre back
        opening. ",
        "Turn the facing back, so it is right sides together with the bodice again. Fold the seam allowance at the centre back
        towards the facing and then pin the neck facing to the bodice at the neck edge. Sew around the neck edge.",
        "Clip the curve with approximately 1cm spacings and then turn the facing to the wrong using a point turner to help you if
        you need.",
        "Under stitch around the neck edge on the facing. You won’t be able to under stitch right to centre back, just sew as
        close as you can. Give your neckline a press."
      ]
    },
    {
      category: {
        pattern_id: 3,
        name: "Round Neck Collar",
        position: 5
      },
      pattern_id: 3,
      steps:
      [
        "Stitch the neck facing at the centre back from the notch to the lower edge.
        Press the seam open then neaten the outer edge.
        With right sides together, pin the neck facing to the bodice at centre back. Now sew each centre back edge together
        with a 1cm seam, starting at the neck edge and finishing at the notch.",
        "Next, fold the facing to the wrong side so the wrong sides are together, then under stitch each edge at the centre back
        opening. ",
        "Turn the facing back, so it is right sides together with the bodice again. Fold the seam allowance at the centre back
        towards the facing and then pin the neck facing to the bodice at the neck edge. Sew around the neck edge.",
        "Clip the curve with approximately 1cm spacings and then turn the facing to the wrong using a point turner to help you if
        you need.",
        "Under stitch around the neck edge on the facing. You won’t be able to under stitch right to centre back, just sew as
        close as you can. Give your neckline a press.",
        "At the centre back, fold back the neck facing and sew the facing seam allowance to the bodice seam allowance to
        secure it. Be careful not to catch your bodice when sewing.",
        "Ditch stitch at each shoulder seam to secure the neck facing to the bodice. If you are sewing the Peter Pan collar, take
        care not to catch your collar securing the facing. "

      ]
    },
    {
      category: {
        pattern_id: 3,
        name: "Tie Back Collar",
        position: 6
      },
      pattern_id: 3,
      steps:
      [
        "With the right sides together, stitch the back neck facing at centre back from the notch to the lower edge.
        Press the seam open, then neaten the long out edge and shoulder.",
        "With right sides together, pin the centre back neck facing to back bodice. Now sew the edges together. ",
        "Next, turn the facing right side out, then under stitch each edge at the centre back opening. ",
        "At the centre back, fold back the neck facing and sew the facing seam allowance to the bodice seam allowance to
        secure it.
        Stitch the back neck facing to the front bodice shoulder seam allowance and then baste the facing to the bodice at the
        back neckline. ",
        "Sew a line stitching at 1cm between the notches, on one side only. This stitching is a guide for folding under the seam
        allowance to help ensure a tidy finish when you close up the collar.",
        "Pin the collar to the bodice on the unstitched side, with the right side of the collar, to the wrong side of the bodice,
        matching the notches. Sew at 1cm then press the seam towards the collar.",
        "Fold the tie collar in half right sides together and pin. Then, stitch the ends closed. Do the same for both ties.",
        "Trim the curves and turn right side out. Give the ties a press.",
        "Fold the collar seam allowance under 1cm, using the line of stitching to guide you and pin it in place. Now, edge stitch
        the collar closed."
      ]
    },
    {
      category: {
        pattern_id: 3,
        name: "Long Sleeves",
        position: 7
      },
      pattern_id: 3,
      steps:
      [
        "We will start by sewing the sleeve placket binding. Using a ruler and tailor’s chalk or a fabric pen, mark your slash line
        from the notch at the wrist to the X mark
        Cut up the slash line to the X mark. Do not cut past the centre of the X or your opening will be too long for the sleeve
        placket binding.",
        "Lay the sleeve placket binding right side up, then place the sleeve on top, also right side up. The cut edge of the sleeve
        split aligns with the long edge of the sleeve placket binding at each end. The top of the split is set back 8mm from the
        binding edge.
        Sew a seam 1cm from the edge of the sleeve placket binding, until you reach the top of the split. The seam allowance on
        the sleeve starts at 1cm, and reduces to 2mm at the top of the split. Stop with your needle down at the top of the split,
        adjust your fabric, and then continue sewing to the other end. The seam allowance on
        the sleeve starts at 1cm
        and reduces to 2mm at
        top of the split.",
        "Fold the binding to enclose the raw edge, tucking the 1cm seam allowance of the placket binding under. Pin in place
        then edge stitch the binding closed from the right side.",
        "Fold the binding in half with the right sides of the sleeve together and stitch diagonally across the fold in the binding. ",
        "Fold the upper binding under to the wrong side, then baste in place. Gently give the binding a press.",
        "With the right sides together, pin the sleeve seam then stitch. Neaten the seam and press it towards the back."
      ]
    },
    {
      category: {
        pattern_id: 3,
        name: "Button Cuff",
        position: 8
      },
      pattern_id: 3,
      steps:
      [
        "Sew a line of stitching at 1cm between the notches as shown below. The side with the stitched line will be the outer cuff,
        and the side without stitching will be the inner cuff. The stitching is a guide for folding under the seam allowance to help
        ensure a tidy finish when you close up the cuff.",
        "Fold the cuff in half, lengthways with the right sides together. Sew the buttonhole end of the cuff closed, finishing 1cm
        before the cuff edge.",
        "At the button tab end of the cuff, sew the end closed at 1cm, this time finishing at the cuff edge.",
        "Then fold the seam towards the inner cuff (unstitched side) and stitch from the edge to the notch, catching the seam
        allowance as you sew. Clip into the end of the seam 1cm on the inner cuff only. ",
        "Sew second cuff as a mirror image of the first cuff so you create a pair of cuffs.",
        "Trim the lower corner on the tab/button end of the cuffs. Now turn your cuff right side out and press.",
        "Using the longest stitch on your sewing machine, run two parallel lines of stitching 6mm apart, at the cuff edge.
        Gather the stitching until it is the same width as the cuff opening.
        Pin the sleeve to the cuff between the notches, wrong side of the sleeve to the right side of the inner cuff. This is the
        unstitched edge of the cuff. The button tab end will go at the back of the sleeve, and the buttonhole end will be at the
        front. Now stitch the sleeve and cuff together.",
        "Press the seam into the cuff. Fold the 1cm seam allowance under, using the line of stitching you sewed to guide you, and
        pin. Edge stitch the cuff closed from the right side. Remove any visible gathering stitches and repeat for your other cuff.",
        "This is how your cuffs will look when complete. The buttons and buttonholes will be sewn at the end.",
      ]
    },
    {
      category: {
        pattern_id: 3, name: "Tie Cuff", position: 9
      },
      pattern_id: 3,
      steps:
      [
        "On the tie cuff, sew a line of stitching at 1cm from the edge to the notch as shown below. This stitching is a guide for
        folding under the seam allowance to help ensure a tidy finish when you close up the cuff. The side with the stitched line
        will be the outer cuff, and the side without stitching will be the inner cuff.",
        "Using the longest stitch on your sewing machine, run two parallel lines of stitching 6mm apart, at the cuff edge. Gather
        the stitching until it is the same width cuff between the notches.
        Pin the sleeve to the cuff between the notches, on the inner cuff (unstitched side). Place the wrong side of the sleeve to
        the right side of the cuff. Now stitch together.",
        "Fold the tie cuff in half right sides together and stitch the ends closed.",
        "Trim the curves and turn right side out. ",
        "Press the seam into the cuff. Fold under the seam allowance 1cm and pin. Edge stitch the cuff closed from the right side.
        Repeat for your other cuff.",
      ]
    },
    {
      category: {
        pattern_id: 3, name: "Attach sleeve", position: 10
      },
      pattern_id: 3,
      steps:
      [
        "We will now set in the sleeves.
        Run a line of basting stitches over the sleeve head, 6mm from the edge, between the notches.
        With the right sides together, pin the sleeve to the bodice, matching the underarm seam and the notches. Pull the
        basting thread gently to ease the sleeve head to the bodice. Sew the sleeve to the bodice, adjusting the sleeve head as you sew and taking care not to create any tucks. Neaten the
        seam and then press it towards the sleeve. Repeat for the second sleeve."
      ]
    },
    {
      category: {
        pattern_id: 3, name: "Sleeveless", position: 11
      },
      pattern_id: 3,
      steps:
      [
        "With right sides together, stitch the front armhole facing to the back armhole facing at the shoulder and underarm.
        Press the seams open then neaten the outer edge with your overlocker.",
        "Pin the facing to the bodice with the right sides together, matching the notches. Sew the armhole facing to the bodice
        then clip the curves. ",
        "Under stitch on the facing then press it to the wrong side of the garment.",
        "Ditch stitch at the shoulder and underarm seams to secure the armhole facing to the bodice.",
        "Now, top stitch the facing at 2cm from the edge.
        Repeat for the other side."
      ]
    },
    {
      category: {
        pattern_id: 3, name: "Sewing the skirt", position: 12
      },
      pattern_id: 3,
      steps:
      [
        "First, we will construct the skirt back.
        With right sides together pin one back skirt side panel to a skirt centre panel, matching the notches. Stitch, and then
        neaten the seam. Repeat for the other side panel. Press the seams towards the side panels.
        Run two parallel lines of basting stitches, 6mm apart, at the waist edge of the skirt back. Use the longest stitch your
        machine has.
        Next, pull the bobbin threads to gather the skirt until it is the same width as the waist edge on the bodice back. ",
        "Now we will sew the skirt front.
        Place the pocket bag onto the front skirt side panel with the right sides together and pin together at notches marked
        ‘pocket opening’. Stitch a box from notch to notch, from the outside edge in towards the pocket bag 1cm. With needle
        down, turn 90 degrees and continue stitching at 1cm, parallel to the edge. Stitch down to line up with the lower notch,
        turn back towards outside and stitch towards the edge.
        Next, mitre in to the upper and lower corners of the box by snipping into each corner. Take care not to cut into your
        stitch line.",
        "Fold entire pocket bag over towards the wrong side of the fabric and press along edge of pocket opening. Under stitch
        the pocket opening from corner to corner. ",
        "Fold the pocket in half, right sides together. Stitch a 1cm seam across the top of the pocket bag to close it and a 1cm
        seam around the curved, lower edge of the pocket bag to close the base. Neaten the lower edge only. Baste the pocket
        to the skirt at the side seam above and below the pocket opening.
        Repeat for the other side.",
        "With right sides together, pin unpocketed edge of the left front side panel to the left side of the front centre panel,
        matching the notches. Sew the seam at 1cm then neaten edges. Repeat for the other front side panel. Press the seams
        towards the side seams.
        Fold the pocket out of the way then run two parallel lines of basting stitches, 6mm apart, at the waist edge of the skirt
        front. Use the longest stitch your machine has. Do not catch the pocket with these stitches.
        Next, pull the bobbin threads to gather the skirt until it is the same width as the waist edge on the bodice front.",
        "With the right sides together, pin the skirt front to the skirt back at the side seams. Stitch together using a 1cm seam.
        Take care near pocket edge not to accidently catch the pocket opening in this seam. You can either pin it back a little or
        tuck it out of the way as you get close to it.
        Neaten the side seams then press them towards the back.",
        "With the right sides together, pin the skirt to the bodice, matching the notches and distributing the gathers evenly. Then
        pin the pockets in place on top of the gathers. Sew the skirt to the bodice and then neaten the seam. Press the seam up, towards the bodice. Fold back your hem seam allowance 1cm, the fold up the hem another 8cm and pin. Edge stitch the hem closed and
        then press. "
      ]
    },
    {
      category: {
        pattern_id: 3, name: "Sewing the peplum", position: 13
      },
      pattern_id: 3,
      steps:
      [
        "Stay stitch the waist edge of each peplum and peplum facing piece separately to prevent them from stretching out. ",
        "Now, with right sides together, sew the side seams of the two peplum pieces together. Press the seams open. Do the
        same with the peplum facing.",
        "Pin the peplum to the peplum facing at the outer edge, with the right sides together and matching the side seams and
        notches. Sew the peplum to the peplum facing with a 6mm seam at the outer edge. Go slow when sewing this seam,
        and take care not to stretch out the hem edge. ",
        "Turn the peplum right sides out and then under stitch on the peplum facing. Give your peplum a press then baste the
        peplum to the peplum facing at the waist edge.",
        "Pin the peplum to the bodice at the waist edge, with the right sides together. Sew them together with 1cm seam and
        then neaten the raw edge. Press this seam towards the bodice."
      ]
    },
    {
      category: {
        pattern_id: 3, name: "Finishing Touches", position: 14
      },
      pattern_id: 3,
      steps:
      [
        "To keep your skirt or peplum seam allowance in place, back tack in the ditch 2-3 stitches at the bodice side seams and
        bodice centre back.",
        "If you are sewing the Round Neck or Peter Pan Collar, sew a button at centre back, opposite your button loop. ",
        "If you are sewing the button cuff, sew a buttonhole on each cuff as indicated, as per your machine’s settings. Use the
        buttonhole placement template as a guide. Sew a button on the tab, opposite the buttonhole, as indicated. Clip any loose threads, remove any visible basting stitches, then give your Ivy Dress or Top a final press.
        You’re all done!"
      ]
    }
  ]

count = 1
instructions2.each_with_index do |instruction, index|
  category = Category.create(
    pattern_id: instruction[:category][:pattern_id],
    name: instruction[:category][:name],
    position: instruction[:category][:position]
  )
  instruction[:steps].each_with_index do |step, step_index|
    instruction = Instruction.new(
      pattern_id: instruction[:pattern_id],
      description: step,
      category_id: category.id,
      position: step_index + 1
    )
    instruction.image.attach(
        io: File.open("#{Rails.root}/seedimages/instructions_seed_images/pattern_3/#{count}.png"),
        filename: "image_2_#{step_index + 1}.png",
        content_type: "image/png"
    )
    puts instruction.save!
    count += 1
  end
end
puts 'Instructions added'
