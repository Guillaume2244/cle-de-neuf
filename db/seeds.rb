Garage.destroy_all
User.destroy_all
Book.destroy_all
Checkup.destroy_all
CheckupItem.destroy_all

toto = User.create!(email:"toto@gmail.com", password:('123456'))
adrien = User.create!(email:"adrien@gmail.com", password:('123456'))
jean = User.create!(email:"jean@gmail.com", password:('123456'))

g1 = Garage.create!(name:"Le beau garage", user:toto, siret:"142567")
g2 = Garage.create!(name:"Le moche garage", user:adrien, siret:"14256799999")

b1 = Book.create!(registration_plate:"56JK", user:jean)
b2 = Book.create!(registration_plate:"89076GHJK", user:jean)

c1 = CheckupItem.create!(category:"Pneu", description:"lalala")
c2 = CheckupItem.create!(category:"Freins", description:"lalala")

cc = Checkup.create!(book:b1, checkup_item:c1)
cc2 = Checkup.create!(book:b2, checkup_item:c2)
