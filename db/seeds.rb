PortfolioAsset.destroy_all
User.destroy_all
ActsAsTaggableOn::Tag.destroy_all

interest_list_items = ["Landscapes", "Seascapes", "Architecture", "Timelapse", "Macro", "StopMotion", "Architecture", "Timelapse", "Drone", "Trans-trav", "Urban", "Street", "Architecture", "City", "Mountains", "Nature", "Timelapse", "GoPro", "4KVideoCamera", "Sliders", "Drone", "Shotgun", "Documentary"]

#Create 10 users
mohamed = User.new(
                    first_name: "Mohamed",
                    last_name: "Almari",
                    biography: "Hi, my names Mo. Im 22 years old from the bay area. My passion is cinema. I love shooting landscapes, seascapes, and architecture. Being able to capture the beauty of this world, and sharing that with you is my goal here. I have recently started to put my artwork to life by creating prints for people to purchase and enjoy. By doing this, I will be able to up my photography game and hopefully take better pictures for you and many people like you to enjoy.",
                    email: "mohamed@video.com",
                    city: "San Francisco, United States of America",
                    wallet: "50", language: "English",
                    password: "123456", password_confirmation: "123456"
                  )
mohamed.photo.attach(io: URI.open("https://images.pexels.com/photos/1002406/pexels-photo-1002406.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "mohamed.png", content_type: 'image/png')
mohamed.interest_list.add(["Landscapes", "Seascapes", "Architecture", "Timelapse"])
mohamed.save!

sunyu = User.new(
                  first_name: "Sunyu",
                  last_name: "Kim",
                  biography: "I am an interdisciplinary artist who has done installation, public art, media art and now animation. I am interested in documentary animation which uses cartoons and music to tell real stories.",
                  email: "sunyu@video.com",
                  city: "Seoul, South Korea",
                  wallet: "50",
                  language: "English, Korean",
                  password: "123457", password_confirmation: "123457"
                  )
sunyu.photo.attach(io: URI.open("https://images.pexels.com/photos/3062551/pexels-photo-3062551.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "sunyu.png", content_type: 'image/png')
sunyu.interest_list.add(["Architecture", "Timelapse", "Drone"])
sunyu.save!

matheus = User.new(
                    first_name: "Matheus",
                    last_name: "Bertelli",
                    biography: "I'm a documentarian and video journalist based in San P. I've been working to produce high-quality video for the past seven years focusing on conflict and social movements. My work has taken me across the globe including the Middle East, Africa, Latin America, Europe, and all over the US. I like to find stories not yet told, and at the very least exploring new dimensions. The subjects must have social relevancy and not only draw attention to the subject, but also highlight how those affected are responding, reacting, and challenging their conditions. I don't like to sensationalize a story. I seek to analyze its roots and look at the broader implications of whatever conflict I may be addressing. I believe that video is one the most effective and dynamic mediums to transmit information, and I attempt to utilize it to its full potential. I'm proud of what I've produced and am anxious to pursue new opportunities to create new works with Storyhunter.",
                    email: "matheus@video.com",
                    city: "São Paulo, Brazil",
                    wallet: "50",
                    language: "English, Brazilian",
                    password: "123458", password_confirmation: "123458")
matheus.photo.attach(io: URI.open("https://images.pexels.com/photos/3379937/pexels-photo-3379937.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "matheus.png", content_type: 'image/png')
matheus.interest_list.add(["Mountains", "Nature", "Timelapse", "GoPro"])

matheus.save!

kyle = User.new(
                first_name: "Kyle",
                last_name: "Loftus",
                biography: "Freelance filmmaker located in Los Angeles :) I am an interdisciplinary artist who has done installation, public art, media art and now animation.",
                email: "kyle@video.com",
                city: "Los Angeles, United States Of America",
                wallet: "50",
                language: "English, Brazilian",
                password: "123459", password_confirmation: "123459")
kyle.photo.attach(io: URI.open("https://images.pexels.com/photos/2961521/pexels-photo-2961521.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "kyle.png", content_type: 'image/png')
kyle.interest_list.add(["StopMotion", "Architecture", "Timelapse"])

kyle.save!

seth = User.new(
                first_name: "Seth",
                last_name: "Coleman",
                biography: "I'm a filmmaker and video journalist from the US, currently based in Europe. I'm focused on telling character driven documentary stories in video. I have an eye for the cinematic, and a keen understanding of the importance of sound in video production.",
                email: "seth@video.com",
                city: "Budapest, Hungary",
                wallet: "50",
                language: "English, Hungarian, Chinese",
                password: "123401", password_confirmation: "123401")
seth.photo.attach(io: URI.open("https://images.pexels.com/photos/2851474/pexels-photo-2851474.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "seth.png", content_type: 'image/png')
seth.interest_list.add(["Sliders", "Drone", "Shotgun", "Documentary"])

seth.save!

olga = User.new(
                first_name: "Olga",
                last_name: "Kravets",
                biography: "Olga Kravets is a documentary filmmaker, photographer and multimedia producer @ Noor Images. She focuses on long-term projects covering human rights and conflict. She was a winner of the Prix Bayeux-Calvados for War Correspondents in 2014, Magnum Emergency Foundation grant recipient in 2013 and a winner of the PDN Photo Annual in 2012. She is the author of Grozny: Nine Cities (Dewi Lewis Publishing, 2018). She lives in Paris and works primarily in the Caucasus, Balkans, and Middle East.",
                email: "olga@video.com",
                city: "Paris, France",
                wallet: "50",
                language: "Bosnian, English, French",
                password: "123402", password_confirmation: "123402")
olga.photo.attach(io: URI.open("https://images.pexels.com/photos/2774165/pexels-photo-2774165.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "olga.png", content_type: 'image/png')
olga.interest_list.add(["Trans-trav", "Urban", "Street"])

olga.save!

archana = User.new(
                first_name: "Archana",
                last_name: "Thiyagarajan",
                biography: "I am a video journalist with more than 8 years experience. I've worked with some of the top media organisations in the world, including The Associated Press, AFP, The Washington Post and Mint-Wall Street Journal. As an independent filmmaker / producer, I've worked with AP, AFP, AJ+, CNBC, Bloomberg, UNDP, UNICEF, UNWomen, etc. Previously, my job as a video Journalist with the AP took me around Asia to cover breaking news and features including the Hong Kong democracy protests, Indian elections, Maldivian elections and the protests in India against the gang-rape of a woman. I shoot with a Canon C100 and edit on Final Cut Pro (occasionally on Adobe Premiere Pro). I also do basic graphics on Adobe After Effects. I edit on Final Cut Pro.",
                email: "archana@video.com",
                city: "New Dheli, India",
                wallet: "50",
                language: "English, Hindi, Tamil",
                password: "123403", password_confirmation: "123403")
archana.photo.attach(io: URI.open("https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "archana.png", content_type: 'image/png')
archana.interest_list.add(["Street", "Shotgun", "StopMotion"])


archana.save!

nuria = User.new(
                first_name: "Nuria",
                last_name: "Tesón",
                biography: "Independent multi-media filmmaker and writer. I develop my filmmaker career in Press and TV. I've worked as a staff member at the Spanish newspaper EL PAÍS where I participated in several investigative coverages. I'm the co-author, with the photographer Miguel Ángel Sánchez, of El Alma del Mundo, (Lunwerg, 2012). This photographic and literary work has been exhibited in Cairo, Paris, Brussels, Dubai, Madrid...",
                email: "nuria@video.com",
                city: "Linköping, Sweden",
                wallet: "50",
                language: " Sweden English",
                password: "123404", password_confirmation: "123404")
nuria.photo.attach(io: URI.open("https://images.pexels.com/photos/139829/pexels-photo-139829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "nuria.png", content_type: 'image/png')
nuria.interest_list.add(["Seascapes", "Architecture", "Mountains"])

nuria.save!

alireza = User.new(
                first_name: "Alireza",
                last_name: "Badiee",
                biography: "Alireza Badiee is a filmmaker, director and video content producer. He graduated in software development at the University of Iran, and then Alireza went to film school in Gothenburg. He is active in Gothenburg and has done short films, music videos and commercials. He has worked in the visual platform professionally since 2010 and has several related certificates / certificates in multimedia, film and photo as well as digital communication and digital marketing.",
                email: "alireza@video.com",
                city: "Milan, Italia",
                wallet: "50",
                language: "Italian English",
                password: "123405", password_confirmation: "123405")
alireza.photo.attach(io: URI.open("https://images.pexels.com/photos/1546711/pexels-photo-1546711.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "alireza.png", content_type: 'image/png')
alireza.interest_list.add(["Mountains", "Nature", "Timelapse", "GoPro"])

alireza.save!

joseph = User.new(
                first_name: "Joseph",
                last_name: "Redfield",
                biography: "Photographer, filmmaker and tech reviewer from Montenegro.",
                email: "joseph@video.com",
                city: "Podgorica, Montenegro",
                wallet: "50",
                language: "Monténégrin English",
                password: "123406", password_confirmation: "123406")
joseph.photo.attach(io: URI.open("https://images.pexels.com/photos/381843/pexels-photo-381843.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "joseph.png", content_type: 'image/png')
joseph.interest_list.add(["Trans-trav", "Urban", "Street", "Architecture", "City"])


joseph.save!



#Create 10 portfolioasset
assetsMohamed = PortfolioAsset.new(user_id: mohamed.id)
assetsMohamed.photos.attach(io: URI.open("https://images.pexels.com/photos/2608519/pexels-photo-2608519.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "mohamedcard.png", content_type: 'image/png')
assetsMohamed.save!

assetsSunyu = PortfolioAsset.new(user_id: sunyu.id)
assetsSunyu.photos.attach(io: URI.open("https://images.pexels.com/photos/3768221/pexels-photo-3768221.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "sunyucard.png", content_type: 'image/png')
assetsSunyu.save!

assetsMatheus = PortfolioAsset.new(user_id: matheus.id)
assetsMatheus.photos.attach(io: URI.open("https://images.pexels.com/photos/1540983/pexels-photo-1540983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "matheuscard.png", content_type: 'image/png')
assetsMatheus.save!

assetsKyle = PortfolioAsset.new(user_id: kyle.id)
assetsKyle.photos.attach(io: URI.open("https://images.pexels.com/photos/2773498/pexels-photo-2773498.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "kylecard.png", content_type: 'image/png')
assetsKyle.save!

assetsSeth = PortfolioAsset.new(user_id: seth.id)
assetsSeth.photos.attach(io: URI.open("https://images.pexels.com/photos/2510425/pexels-photo-2510425.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "sethcard.png", content_type: 'image/png')
assetsSeth.save!

assetsOlga = PortfolioAsset.new(user_id: olga.id)
assetsOlga.photos.attach(io: URI.open("https://images.pexels.com/photos/1615824/pexels-photo-1615824.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "olgacard.png", content_type: 'image/png')
assetsOlga.save!

assetsArchana = PortfolioAsset.new(user_id: archana.id)
assetsArchana.photos.attach(io: URI.open("https://images.pexels.com/photos/947785/pexels-photo-947785.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "archanacard.png", content_type: 'image/png')
assetsArchana.save!

assetsNuria = PortfolioAsset.new(user_id: nuria.id)
assetsNuria.photos.attach(io: URI.open("https://images.pexels.com/photos/1545980/pexels-photo-1545980.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "nuriacard.png", content_type: 'image/png')
assetsNuria.save!

assetsAlireza = PortfolioAsset.new(user_id: alireza.id)
assetsAlireza.photos.attach(io: URI.open("https://images.pexels.com/photos/220417/pexels-photo-220417.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "alirezacard.png", content_type: 'image/png')
assetsAlireza.save!

assetsJoseph = PortfolioAsset.new(user_id: joseph.id)
assetsJoseph.photos.attach(io: URI.open("https://images.pexels.com/photos/68426/pexels-photo-68426.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"), filename: "josephcard.png", content_type: 'image/png')
assetsJoseph.save!

#Create tags


