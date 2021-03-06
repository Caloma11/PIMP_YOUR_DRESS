# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name:"Mario" , last_name:"Silva", email:"maria@gmail.com", password:"123456", bio:"I'm a local Rio designer with no degree but tons of experience. Ask me anything." , city:"Rio de Janeiro", remote_photo_url:'http://res.cloudinary.com/dta0lx6co/image/upload/v1522870458/mfqbfjlpnkrtpllguxyk.jpg' )
User.create(first_name:"Carlo" , last_name:"Vincenzo", email:"carlo@gmail.com", password:"123456", bio:"I'm a milanese designer working as a freelancer right now. I've travelled all Europe and know how to dress. Really." , city:"Recife", remote_photo_url: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1522869467/yns7ktso7m1xxavqlivt.jpg' )
User.create(first_name:"Stephanie" , last_name:"Laurent", email:"stephanie@gmail.com", password:"123456", bio:"I'm a photographer, but been working with fashion since last year. I know pretty much everything about it, ask me." , city:"São Paulo", remote_photo_url: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1522869699/gbhd9xtafesy6e9chmj8.jpg' )
User.create(first_name:"Pedro" , last_name:"Meier", email:"joao@gmail.com", password:"123456", bio:"I'm a manager at one of the most famous clothing stores in Rio, and know everything about local shops and fashion spots." , city:"Rio de Janeiro", remote_photo_url: 'https://res.cloudinary.com/dta0lx6co/image/upload/v1523022056/photo-1501040784059-8fc07bfa4e2c.jpg' )
User.create(first_name:"Cecille" , last_name:"Mazon", email:"cecille@gmail.com", password:"123456", bio:"I have a fine arts degree and work in retail for 2 years. Know everything about modern street fashion." , city:"Rio de Janeiro", remote_photo_url: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1522869282/dzwinnuqel82trbta2pj.jpg'  )
User.create(first_name:"Laura" , last_name:"Palmer", email:"laura@gmail.com", password:"123456", bio:"I'm a clothes seller at Urban Outfitters in Sao Paolo for about 9 months now, and love the urban scene here. Surely have some tips to share about the cool local spots." , city:"São Paulo", remote_photo_url: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1522869076/tsctjzythn5mew7yiup8.jpg' )
User.create(first_name:"Caroline" , last_name:"Fully", email:"caroline@gmail.com", password:"123456", bio:"I'm a clothing salesman for 6 years, so i know everything about not only the current fashion, but about pretty much all of it. Hit me up." , city:"Rio de Janeiro", remote_photo_url: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1522868530/okyr74mdnskiabte6ihj.jpg' )
User.create(first_name:"Paula", last_name:"Scacciano", email: "paula@gmail.com", password: "123456", bio: "I'm a italian fashion student, currently living in Berlin. I know everything about the underground fashion scene. Just ask me.", city: "Belo Horizonte", remote_photo_url: 'http://res.cloudinary.com/dta0lx6co/image/upload/v1522870688/uto4mwwhyxv7caidcitu.jpg')


Advisor.create(price: 500, category: "Fashion Designer", user_id: 1, title: "Dress up spiritually")
Advisor.create(price: 200, user_id: 2, category: "Fashion Student", title: "Dress hard.")
Advisor.create(price: 430, category: "Designer", user_id: 3, title: "Sharply dress yourself.")
Advisor.create(price: 1000, category: "Clothes Seller", title: "Punk it up", user_id: 4)
Advisor.create(price: 280, category: "Retail Manager", user_id: 5, title: "Dress like a local.")
Advisor.create(price: 220, category: "Art Major", title: "Urban dressing at its finest.", user_id: 6 )
Advisor.create(price: 350, category: "Desginer", user_id: 7, title: "Dress sharp now")
Advisor.create(price: 300, category: "Clothing salesman", title: "Ask who knows", user_id: 8)

