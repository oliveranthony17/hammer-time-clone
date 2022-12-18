puts "clearing all users, listings and bookings..."

User.destroy_all
Listing.destroy_all
Booking.destroy_all

puts "creating the four mangos as users..."

oliver = User.find_or_initialize_by({
    email: "oliver@lewagon.com"
  }
)
oliver.password = "lewagon"
oliver.address = "Löwenplatz, Luzern"
oliver.name = "Oliver"
oliver.phone = "44719999991"
oliver.save!

admin = User.find_or_initialize_by({
    email: "admin@lewagon.com"
  }
)
admin.password = "lewagon"
admin.address = "Rennweg 57, Zürich"
admin.name = "admin"
admin.phone = "0743243693"
admin.save!

ioannis = User.find_or_initialize_by({
    email: "ioannis@lewagon.com"
  }
)
ioannis.password = "lewagon"
ioannis.address = "Badenerstrasse, 8048 Zürich"
ioannis.name = "Ioannis"
ioannis.phone = "0745935921"
ioannis.save!

marlin = User.find_or_initialize_by({
    email: "marlin@lewagon.com"
  }
)
marlin.password = "lewagon"
marlin.address = "Verenastrasse, Zürich"
marlin.name = "Marlin"
marlin.phone = "0792103862"
marlin.save!

omar = User.find_or_initialize_by({
    email: "omar@lewagon.com"
  }
)
omar.password = "lewagon"
omar.address = "Bahnhofstrasse, Zürich"
omar.name = "Omar"
omar.phone = "0764921653"
omar.save!

puts "created users!"
puts "creating 2 listings per user..."

listing1 = Listing.find_or_initialize_by({
  name: "Electric drill with swiss plug",
  description: "Plug drill straight in to mains for EXTRA POWER!!! Will go through absolutely anything (except metal, diamond and other precious stones)",
  price_per_hour: 5,
  location: "Löwenplatz, Luzern",
  user_id: oliver.id,
  category_type: "Electronic"
})

listing1.photo.attach(
  filename: 'electricdrill.jpeg',
  io: URI.open('https://d1b5h9psu9yexj.cloudfront.net/36860/DeWalt-DCD791D2-20V-Max-XR-Li-Ion-Brushless-Compact-Drill-Driver-Kit_20200205-164009_full.jpeg')
)
listing1.save!

listing2 = Listing.find_or_initialize_by({
  name: "Workbench available",
  description: "Workbench includes sander, disc saw and plenty of tools - open to use but must provide own materials",
  price_per_hour: 10,
  location: "Mozartstrasse, Luzern",
  user_id: oliver.id,
  category_type: "Electronic"
})

listing2.photo.attach(
  filename: 'workbench.jpg',
  io: URI.open('https://s3.amazonaws.com/media.woodsmithplans.com/images/SN13734_heavy-duty-plank-workbench/photo-large-hd.jpg')
)
listing2.save!

listing3 = Listing.find_or_initialize_by({
  name: "Spirit level",
  description: "Wonky shelves no longer - borrow my spirit level(s) - come in various sizes",
  price_per_hour: 3.50,
  location: "Zürcherstrasse, 8952 Zürich",
  user_id: ioannis.id,
  category_type: "Electronic"
})

listing3.photo.attach(
  filename: 'spiritlevel.jpg',
  io: URI.open('https://app.nextpim.de/Cloud/6118eacef55a4834b44c3623/a3ba70a2-990d-432c-fb8c-08d79e6bb09c/800394_Magnet-Wasserwaage_horizontal.jpg')
)
listing3.save!

listing4 = Listing.find_or_initialize_by({
  name: "Cat nail clippers",
  description: "My Scottish Fold hates these... available to borrow and stop your crazy cat scratching you!",
  price_per_hour: 2,
  location: "Zürcherstrasse, 8952 Zürich",
  user_id: ioannis.id,
  category_type: "Electronic"
})

listing4.photo.attach(
  filename: 'cat_nail_clippers.jpg',
  io: URI.open('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2022%2F02%2F15%2Fcat-nail-clippers-2000.jpg&w=640&h=428&c=sc&poi=%5B1260%2C533%5D&q=60')
)
listing4.save!

listing5 = Listing.find_or_initialize_by({
  name: "Electric hammer",
  description: "Does your hand hurt from too much manual hammering? Homer Simpson has invented an electric hammer to save your fingers!!",
  price_per_hour: 2,
  location: "Verenastrasse, Zürich",
  user_id: marlin.id,
  category_type: "Electronic"
})

listing5.photo.attach(
  filename: 'hammer.jpg',
  io: URI.open('https://m.media-amazon.com/images/I/31gNCK14jYL._AC_.jpg')
)
listing5.save!

listing6 = Listing.find_or_initialize_by({
  name: "Electric bicycle pump",
  description: "Electric pump available to pump up your tyres! Comes with pressure dial and multiple valve connectors",
  price_per_hour: 10,
  location: "Verenastrasse, Zürich",
  user_id: marlin.id,
  category_type: "Electronic"
})
listing6.photo.attach(
  filename: 'pump.jpg',
  io: URI.open('https://cyclingtips.com/wp-content/uploads/2020/12/Fumpa-electric-bicycle-pump-review-11.jpg')
)
listing6.save!

listing7 = Listing.find_or_initialize_by({
  name: "Welding Helmet",
  description: "Keep your sight with this welding helmet. Prevents electricity getting in to your eyeballs which isn't recommended - trust me!!",
  price_per_hour: 20,
  location: "Bahnhofstrasse, Zürich",
  user_id: omar.id,
  category_type: "Electronic"
})
listing7.photo.attach(
  filename: 'helmet.jpg',
  io: URI.open('https://cdn.mscdirect.com/global/images/ProductImages/4608936-24.jpg')
)
listing7.save!


listing8 = Listing.find_or_initialize_by({
  name: "Robot computer chip",
  description: "Put this computer chip in any electrical appliance to see it come to life!! Comes with emergency deactivation button in case of robot rebellion... Yes I've watched iRobot",
  price_per_hour: 50,
  location: "Bahnhofstrasse, Zürich",
  user_id: omar.id,
  category_type: "Electronic"
})
listing8.photo.attach(
  filename: 'helmet.jpeg',
  io: URI.open('https://www.sigarch.org/wp-content/uploads/2018/04/AdobeStock_10252540-1080x675.jpeg')
)
listing8.save!

puts "created listings!"
puts "creating a few bookings..."

Booking.create!({
  start_date: Date.new(2022,11,28),
  end_date: Date.new(2022,11,28),
  listing_id: listing8.id,
  user_id: oliver.id
})

Booking.create!({
  start_date: Date.new(2022,12,9),
  end_date: Date.new(2022,12,15),
  listing_id: listing5.id,
  user_id: omar.id,
  status: "confirmed"
})

Booking.create!({
  start_date: Date.new(2023,2,3),
  end_date: Date.new(2023,2,6),
  listing_id: listing6.id,
  user_id: ioannis.id
})

Booking.create!({
  start_date: Date.new(2023,2,25),
  end_date: Date.new(2023,2,26),
  listing_id: listing1.id,
  user_id: marlin.id
})

puts "FINISHED!"
