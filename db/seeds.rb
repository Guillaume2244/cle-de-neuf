Template.destroy_all
Garage.destroy_all
Book.destroy_all
CheckupItem.destroy_all
Checkup.destroy_all
User.destroy_all


toto = User.create!(email:"toto@gmail.com", password: '123456', garagiste: true)
adrien = User.create!(email:"adrien@gmail.com", password: '123456', garagiste: true)
jean = User.create!(email:"jean@gmail.com", password: '123456')

g1 = Garage.create!(name:"Le beau garage", user:toto, siret:"142567")
g2 = Garage.create!(name:"Le moche garage", user:adrien, siret:"14256799999")

t1 = Template.create!(pneus_km:"40000", pneus_date:"5", freinage:"2", revision_km:"15000", revision_date:"1",
  balai:"1", echappement:"2",amortisseurs_km:"20000", amortisseurs_date:"1",
  bougies_km:"60000", climatisation:"1", controle_technique_first:"4", controle_technique_others:"2",
  vidange_km:"10000", vidange_date:"1")


b1 = Book.create!(registration_plate:"BL-710-MC", user:jean, initial_km: '20000', template:t1)
b2 = Book.create!(registration_plate:"GH-789-JK", user:jean, initial_km: '1000', template:t1)
b3 = Book.create!(registration_plate:"VV-905-VS", user:jean, initial_km: '2300', template:t1)
b4 = Book.create!(registration_plate:"PM-7234-JP", user:jean, initial_km: '44000', template:t1)

c1 = CheckupItem.create!(name:"Pneus", description:"40 000km ou > 5 ans", numero: 1)
c2 = CheckupItem.create!(name:"Pneus", description:"80 000km ou > 10 ans", numero: 2)
c3 = CheckupItem.create!(name:"Pneus", description:"120 000km ou > 15 ans", numero: 3)
c4 = CheckupItem.create!(name:"Pneus", description:"160 000km ou > 20 ans", numero: 4)
c5 = CheckupItem.create!(name:"Freinage", description:"2ans", numero: 1)
c6 = CheckupItem.create!(name:"Freinage", description:"4ans", numero: 2)
c7 = CheckupItem.create!(name:"Freinage", description:"6ans", numero: 3)
c8 = CheckupItem.create!(name:"Freinage", description:"8ans", numero: 4)

d1 = CheckupItem.create!(name:"Revision", description:"15 000km ou > 1an", numero: 1)
d2 = CheckupItem.create!(name:"Revision", description:"30 000km ou > 2ans", numero: 2)
d3 = CheckupItem.create!(name:"Revision", description:"45 000km ou > 3ans", numero: 3)
d4 = CheckupItem.create!(name:"Revision", description:"60 000km ou > 4ans", numero: 4)
d5 = CheckupItem.create!(name:"Revision", description:"75 000km ou > 5ans", numero: 5)
d6 = CheckupItem.create!(name:"Revision", description:"90 000km ou > 6ans", numero: 6)

e1 = CheckupItem.create!(name:"Balai essui glace", description:"1 ere annee", numero: 1)
e2 = CheckupItem.create!(name:"Balai essui glace", description:"2 eme annee", numero: 2)
e3 = CheckupItem.create!(name:"Balai essui glace", description:"3 eme annee", numero: 3)
e4 = CheckupItem.create!(name:"Balai essui glace", description:"4 eme annee", numero: 4)

f1 = CheckupItem.create!(name:"Balai essui glace", description:"3 eme annee", numero: 3)
f2 = CheckupItem.create!(name:"Balai essui glace", description:"4 eme annee", numero: 4)

g1 = CheckupItem.create!(name:"Echappement", description:"Echappement 2ere annee", numero: 1)
g2 = CheckupItem.create!(name:"Echappement", description:"Echappement 4eme année", numero: 2)

h1 = CheckupItem.create!(name:"Amortisseurs", description:"Amortisseurs 2ere annee", numero: 1)
h2 = CheckupItem.create!(name:"Amortisseurs", description:"Amortisseurs 4eme annee", numero: 2)

i1 = CheckupItem.create!(name:"Bougies", description:"Bougies 60 000km", numero: 1)
i2 = CheckupItem.create!(name:"Bougies", description:"Bougies 120 000km", numero: 2)

j1 = CheckupItem.create!(name:"Climatisation", description:"Climatisation 1 an", numero: 1)
j2 = CheckupItem.create!(name:"Climatisation", description:"Climatisation 2 ans", numero: 2)

k1 = CheckupItem.create!(name:"Controle Technique", description:"Controle Technique 1er", numero: 1)
k2 = CheckupItem.create!(name:"Controle Technique", description:"Controle Technique autres", numero: 2)

l1 = CheckupItem.create!(name:"Vidange", description:"Vidange 1ere", numero: 1)
l2 = CheckupItem.create!(name:"Vidange", description:"Vidange 2eme", numero: 2)







