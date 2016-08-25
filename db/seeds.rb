Garage.destroy_all
Book.destroy_all
Checkup.destroy_all
CheckupItem.destroy_all
User.destroy_all

toto = User.create!(email:"toto@gmail.com", password: '123456')
adrien = User.create!(email:"adrien@gmail.com", password: '123456')
jean = User.create!(email:"jean@gmail.com", password: '123456')

g1 = Garage.create!(name:"Le beau garage", user:toto, siret:"142567")
g2 = Garage.create!(name:"Le moche garage", user:adrien, siret:"14256799999")

b1 = Book.create!(registration_plate:"BL-710-MC", user:jean, initial_km: '20000')
b2 = Book.create!(registration_plate:"GH-789-JK", user:jean, initial_km: '1000')
b3 = Book.create!(registration_plate:"VV-905-VS", user:jean, initial_km: '2300')
b4 = Book.create!(registration_plate:"PM-7234-JP", user:jean, initial_km: '44000')

c1 = CheckupItem.create!(name:"Pneus", description:"pas encore")
c2 = CheckupItem.create!(name:"Freinage", description:"pas encore")
c3 = CheckupItem.create!(name:"Revision", description:"pas encore")
c4 = CheckupItem.create!(name:"Balai essui glace", description:"pas encore")
c5 = CheckupItem.create!(name:"Echappement", description:"pas encore")
c6 = CheckupItem.create!(name:"Amortissseurs", description:"pas encore")
c7 = CheckupItem.create!(name:"Bougies", description:"pas encore")
c8 = CheckupItem.create!(name:"Climatisation", description:"pas encore")
c9 = CheckupItem.create!(name:"Controle Technique", description:"pas encore")
c10 = CheckupItem.create!(name:"Vidange", description:"pas encore")

ca = Checkup.create!(book:b1, checkup_item:c1, garage:g2, km_ondate: '30000')
cb = Checkup.create!(book:b2, checkup_item:c2, garage:g2, km_ondate: '24000')
cc = Checkup.create!(book:b3, checkup_item:c7, garage:g1, km_ondate: '44000')
cd = Checkup.create!(book:b4, checkup_item:c9, garage:g1, km_ondate: '1200')
