# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Message.destroy_all
# Chatroom.destroy_all
Review.destroy_all
Booking.destroy_all
Dog.destroy_all
User.destroy_all
Favourite.destroy_all
Review.destroy_all

puts "Creating Users ..."
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1622215117/85hbbudq7d5j50b82zlnb1595equ.jpg')
user = User.new(name: "Joe Smith", address: "SE6 4FD", contact_number: "07706782877", email: "joe@test.co.uk", password: "123456")
user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
user.save!

file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623163631/79164134_khqhty.jpg')
user2 = User.new(name: "Robyn Ellison", address: "Cambridge", contact_number: "07944334443", email: "re@test.co.uk", password: "123456")
user2.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
user2.save!

file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623920047/yon_cpu9oj.jpg')
user3 = User.new(name: "Yon Rospigliosi", address: "Paris", contact_number: "07944377443", email: "dg@test.co.uk", password: "123456")
user3.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
user3.save!
puts "Finished Creating Users"

puts "Creating Dogs..."
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623954957/james-watson-2joVhR1OWSc-unsplash_1_akapsq.jpg')
dolly = Dog.new(name: "Dolly", breed:"Miniature Dachshund", age: 10, temperament: "Grumpy", sex: "Female", description: "Dolly is a stunning 10 year old Dachshund who still acts like a massive puppy.  She loves her toys and will fight anyone who tries to take them away. Dolly is looking for an adult only PawPal as she can be wary of strangers and reactive to dogs so will need quiet walking areas. Dolly loves Chihuahua’s and other like minded dachshunds.", user: user)
dolly.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dolly.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623239285/image4_scbsks.jpg')

dog = Dog.new(name: "Lunar", breed: "Siberian Husky", age: 5, temperament: "Energetic", sex: "Female", description: "Lunar is a lively 4 year old Husky looking for an active experience. She loves to go on exciting adventures and would love other dogs that have as much energy as she does! Lunar is such an intelligent girl and would love a pawpal who are enthuastic about playing fetch.", user: user3)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623958647/pexels-ellie-burgin-4777025_b0fmxr.jpg')
jimi = Dog.new(name: "Jimi", breed: "Chihuahua", age: 1, temperament: "Playful", sex: "Male", description: "Jimi is tiny and cute but is someone who also has plenty of character. He may be small, but he thinks he is a big dog in a small body. Jimi does like things on his terms and if he doesnt want to do something he will be sure to tell you. Jimi is very good in the car, he walks very well on the lead and certainly loves a cuddle, but again only on his terms.", user: user2)
jimi.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
jimi.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623160757/photo-1530281700549-e82e7bf110d6_upsa3g.jpg')
dog = Dog.new(name:"Susan", breed: "Cocker Spaniel", age: 3, temperament: "Wild", sex: "Female" , description: "Susan is an energetic 5 year old working cocker cross springer spaniel who loves to be busy. She requires a good balance of physical exercise, training activities and mental stimulation and so would suit a PawPal of a similar type. Sampson enjoys practicing agility in the park, and has started learning some basic gun dog skills to keep her brain engaged.", user: user2)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623161363/josephine-menge-h7VBJRBcieM-unsplash_lmfczw.jpg')
dog = Dog.new(name:"Mabel", breed: "Border-Collie", age: 7, temperament: "Relaxed", sex: "Female" , description: "She has lots of personality and despite being 13 years old still loves to go for her walks. Mabel is a typical Collie so ideally needs a Collie Experience although this is not essential. Mabel loves swimming in the river and rolling in fox poo!", user: user3)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623161636/photo-1617031115609-b1b9f58cd932_urigab.jpg')
dog = Dog.new(name:"Bernard", breed: "Border Terrier", age: 8, temperament: "Sensitive", sex: "Male" , description: "Bernard is a sensitive little man who hasn't had the best journey in life so far, he does take a while to warm up to people but once he has a bond with you, he enjoys the fuss and attention. Bernard is a fun loving dog who will show you in time, he loves spending his days playing with squeaky toys or zooming around the garden! The way to Bernards heart is through food, he'll let you know when it's dinner time by barking excitedly!", user: user2)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623161914/hrihorii-sheldunov-9_H3ss1ko4c-unsplash_ote4xu.jpg')
dog = Dog.new(name:"Teddy", breed: "Akita", age: 5, temperament: "Timid", sex: "Male" , description: "Teddy is very enthusiastic about life and shows his cheeky personality to everyone he knows. He has been receiving training weekly with a dog trainer and is thriving. His love of food and toys are certainly the way to make friends with him as it does take him some time to warm up to new people and he isn't going to love everyone. He has been socialising well with other dogs during his time here which will need carefully continuing once home.", user: user2)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623162032/vidhey-pv-p7W5fTRMGO8-unsplash_hpe1nu.jpg')
dog = Dog.new(name:"Murphy", breed: "Boxer", age: 6, temperament: "Defensive", sex: "Male" , description: "Murphy is a beautiful boy who just adores human company. Murphy just loves having fuss,love and cuddling up on the sofa is one of his favourite past times. He has been in a home and was toilet trained and very quick to learn new things. Unfortunately Murphy cannot play with many dogs as he becomes very worried and defensive towards them. He is walked muzzled due to this. He needs a older pawpal that is calm to help him with his anxiety around other dogs", user: user3)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623162487/andrey-sharpilo-mRAVqjpStF4-unsplash_laxpyb.jpg')
dog = Dog.new(name:"Max", breed: "Pomeranian", age: 3, temperament: "Diva", sex: "Male", description: "Max is cheeky dog who is happiest when he is side by side with his handlers on a walk over the fields. As with many dogs you can also add food, toys, other dogs and chilling out in the sun to his list of likes. Whilst Max presents mostly as an enthusiastic and happy dog when with people he knows, there are specific aspects to his personality that an PawPal would need to take on board. Max is not comfortable with unknown people handling him, this will mean on walks Max would need to be kept on lead in public.", user: user3)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623392905/henry-ravenscroft-cdkocPV7LKY-unsplash_ozzgta.jpg')
dog = Dog.new(name:"Lemon", breed: "Staffordshire Bull Terrier", age: 9, temperament: "Lazy", sex: "Female", description: "Lemon is your typical loving and caring 10 year old Staffordshire Bull Terrier in search of her forever friend. He is your typical staffy who has a huge stomach for tasty treats and will settle with a nice kong filled with lots of goodies! She is an older girl who prefers shorter walks followed by lots of cuddles and fuss!", user: user3)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623920860/rafael-forseck-Mlrc9NwoZFk-unsplash_s92v7j.jpg')
dog = Dog.new(name:"Steve", breed: "Dalmatian", age: 9, temperament: "Defensive", sex: "Male", description: "Steve is a gorgeous boy who is currently finding life just a little overwhelming. He has an affectionate personality but needs an understanding PawPal that are willing to help him settle so he can feel comfortable and be his true self. He loves his toys will really start to show his personality when he's relaxed.", user: user2)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623938688/shih-tzu_cukahu.jpg')
dog = Dog.new(name:"Charles", breed: "Shih-tzu", age: 6, temperament: "Playful", sex: "Male", description: "Charles is a playful little bundle of energy. He loves meeting new dogs and playing chase. He doesn't like going out in the rain or getting dirty and is happy to sit on your lap all evening if the weather's bad!", user: user2)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623961354/bruce-galpin-h7oZAHnS9_E-unsplash_fur39r.jpg')
dog = Dog.new(name:"Sally", breed: "Pug", age: 4, temperament: "Lazy", sex: "Female", description: "Sally is a cute little pug with plenty of personality. She's not overely fond of long walks, she would prefer a short trott around the park and then is happy to chill out on the sofa all evening. She enjoys meeting other dogs but gets tired quite quickly and likes to have her own space.", user: user3)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!

file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623940204/cocker_spaniel_beach_l_a0jrvi.jpg')
dog = Dog.new(name:"Sweep", breed: "Cocker Spaniel", age: 6, temperament: "Playful", sex: "Male", description: "He LOVES his food and toys (although a little too much!), and does enjoy spending time out and about exploring the world around him", user: user3)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623954664/tracy-anderson-3Nl7McrG1RA-unsplash_daroeo.jpg')
dog = Dog.new(name:"Polly", breed: "Cavalier King Charles", age: 3, temperament: "Relaxed", sex: "Female", description: "Polly is a friendly little dog who wants to make lots of new paw pals! She's very easygoing and can be friends with any breed, though she does get a little scared of some very big dogs. She likes to play chase and when she gets tired, to lie down and relax in the sun", user: user2)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623954523/elisei-abiculesei-dbae4paFh9s-unsplash_xj5qkg.jpg')
dog = Dog.new(name:"Snowy", breed: "Bichon Frise", age: 5, temperament: "Lazy", sex: "Female", description: "Snowy is a very chilled out and relaxed little dog. She likes to have a lie in and get an early night. She enjoys lying in the garden in the sun or lying on her heated blanket. She needs the chance to socialise more with other dogs to build her confidence", user: user3)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623954766/cole-keister-qNJpGSCv_Jc-unsplash_h5bmlr.jpg')
dog = Dog.new(name:"Jack", breed: "Corgi", age: 8, temperament: "Energetic", sex: "Male", description: "Don't be fooled by his size and age, Jack has plenty of energy and a very playful nature. It would be good for him to make some paw pals of a similar size so he has a great outlet for his energy and also the chance to get to know more dogs!", user: user2)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!

file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623941222/Whippet-Lurcher-Dog-Breed-Guide_on5ud5.jpg')
dog = Dog.new(name:"Fred", breed: "Lurcher", age: 7, temperament: "Energetic", sex: "Male", description: "Fred has copious amounts of energy and is looking for paw pals with a similar amount! Any paw pals would also need to be big dogs as Fred gets unnerved by smaller dogs and is unsure how to play with them. He enjoys running and chasing.", user: user3)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623941392/yorkshire-terrier-3_wn7zrw.jpg')
dog = Dog.new(name:"Doris", breed: "Yorkshire Terrier", age: 2, temperament: "Timid", sex: "Female", description: "Doris is a lovely friendly little dogs once she gets to know a person or a dog. She is very shy with new dogs and it would be great for her to have the chance to improve her confidence through meeting small and calm dogs in the area. She is very scared of big dogs but it may be helpful for her to meet some slowly too.", user: user2)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!

file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623944335/Beagle-puppy-standing-in-the-grass-1_xag4pk.jpg')
benny = Dog.new(name:" Benny", breed: "Beagle", age: 1, temperament: "Playful", sex: "Male", description: "Benny is a playful dog hoping to make lots of new paw pals. His human has just moved to the area and is keen for him to have regular play dates to continue his successful socialisation.", user: user3)
benny.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
benny.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623944501/Affenpinscher-puppy_omuywr.jpg')
dog = Dog.new(name:"Aipom", breed: "Affenpinscher", age: 1, temperament: "Wild", sex: "Male", description: "This little guy is very excitable and wild. He needs to meet some dogs with a similar temperament to ensure he can burn his energy and is not too much for other shyer, calmer dogs", user: user2)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
file = URI.open('https://res.cloudinary.com/ds6vgzap2/image/upload/v1623944670/JackRussellTerriers_k1og4a.jpg')
dog = Dog.new(name:"Alexander", breed: "Jack Russell Terrier", age: 9, temperament: "Grumpy", sex: "Male", description: "Alexander is a cute little guy with plenty of attitude. He needs to meet only calm dogs as he is easily irritated by other dogs and can be rather grumpy!.", user: user2)
dog.photos.attach(io: file, filename: 'dog.png', content_type: 'image/png')
dog.save!
puts "Finished Creating Dogs!"

booking = Booking.new(date: Date.new(2021,05,20), my_dog: benny, their_dog: dolly, accepted: true)
booking.save!

review = Review.new(content: "Jimi is a lovely dog, very friendly and playful. Recommend him as a paw pal! :)", dog: jimi, user: user3)
review.save!
