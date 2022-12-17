require 'open-uri'

print `rails db:drop`
puts "Database resetted"
puts "Creating database"
print `rails db:create`
puts "Databse created"
print `rails db:migrate`

puts "Creating users..."
User.create(email: "stephen@test.com", password: "123456")
User.create(email: "demi@test.com", password: "123456")
User.create(email: "yatin@test.com", password: "123456")
User.create(email: "pizza@pasta.com", password: "123456")
puts 'Users created'


seed_images = [
  {
    images: [
      "#{Rails.root}/seedimages/seed1_image1.jpg",
      "#{Rails.root}/seedimages/seed1_image2.jpg",
      "#{Rails.root}/seedimages/seed1_image3.jpg"
    ],
    fabric: "#{Rails.root}/seedimages/seed1_fabric.png",
    sizing: "#{Rails.root}/seedimages/seed1_sizing.png"
  }
]

Pattern.create(
  title: "Vogue Misses Special Occasion Dress",
  description: "Dress is fitted through bust and hip with lined body, unlined sleeve and flounce, purchased bias tape to finish armhole edge, narrow hems and length and trim variations. B: Purchased trim.",
  difficulty: "easy",
  price: 10,
  user_id: 1
)

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
    filename: "fabric_#{index + 1}.png",
    content_type: "image/png")
  pattern.sizing.attach(
    io: File.open(seed_image[:sizing]),
    filename: "sizing_#{index + 1}.png",
    content_type: "image/png"
  )
end


# seed 1 image http://res.cloudinary.com/dhnpqzuip/image/upload/v1671241308/dwhoyitivawract6dsih.jpg
# seed 1 fabric http://res.cloudinary.com/dhnpqzuip/image/upload/v1671241371/fhqrxqxf3wvtlfyhhuj4.png
# seed 1 sizing http://res.cloudinary.com/dhnpqzuip/image/upload/v1671241390/uyhs2h8jqlql5scowedm.png
