Garage.destroy_all
Book.destroy_all
Template.destroy_all
Checkup.destroy_all
CheckupItem.destroy_all
User.destroy_all




toto = User.create!(email:"toto@gmail.com", password: '123456', garagiste: true)
adrien = User.create!(email:"adrien@gmail.com", password: '123456', garagiste: true)
jean = User.create!(email:"jean@gmail.com", password: '123456')

g1 = Garage.create!(name:"Le beau garage", user:toto, siret:"142567", city:"Lille", street:"12, rue des Tours", zip_code:"59000")
g2 = Garage.create!(name:"Le moche garage", user:adrien, siret:"14256799999", city:"Lille", street:"128, rue nationale", zip_code:"59000")

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
c5 = CheckupItem.create!(name:"Pneus", description:"Autre", numero: 5)


c5 = CheckupItem.create!(name:"Freinage", description:"Véhicule >= 2ans", numero: 1)
c6 = CheckupItem.create!(name:"Freinage", description:"Véhicule >= 4ans", numero: 2)
c7 = CheckupItem.create!(name:"Freinage", description:"Véhicule >= 6ans", numero: 3)
c8 = CheckupItem.create!(name:"Freinage", description:"Véhicule >= 8ans", numero: 4)
c9 = CheckupItem.create!(name:"Freinage", description:"Autre", numero: 5)

d1 = CheckupItem.create!(name:"Revision", description:"15 000km ou > 1an", numero: 1)
d2 = CheckupItem.create!(name:"Revision", description:"30 000km ou > 2ans", numero: 2)
d3 = CheckupItem.create!(name:"Revision", description:"45 000km ou > 3ans", numero: 3)
d4 = CheckupItem.create!(name:"Revision", description:"60 000km ou > 4ans", numero: 4)
d5 = CheckupItem.create!(name:"Revision", description:"75 000km ou > 5ans", numero: 5)
d6 = CheckupItem.create!(name:"Revision", description:"90 000km ou > 6ans", numero: 6)
d7 = CheckupItem.create!(name:"Revision", description:"Autre", numero: 7)

e1 = CheckupItem.create!(name:"Balai essui-glace", description:"Véhicule >= 1an", numero: 1)
e2 = CheckupItem.create!(name:"Balai essui-glace", description:"Véhicule >= 2ans", numero: 2)
e3 = CheckupItem.create!(name:"Balai essui-glace", description:"Véhicule >= 3ans", numero: 3)
e4 = CheckupItem.create!(name:"Balai essui-glace", description:"Véhicule >= 4ans", numero: 4)
e5 = CheckupItem.create!(name:"Balai essui-glace", description:"Véhicule >= 5ans", numero: 5)
e6 = CheckupItem.create!(name:"Balai essui-glace", description:"Véhicule >= 6ans", numero: 6)
e7 = CheckupItem.create!(name:"Balai essui-glace", description:"Autre", numero: 7)


g1 = CheckupItem.create!(name:"Echappement", description:"Véhicule >= 2ans", numero: 1)
g2 = CheckupItem.create!(name:"Echappement", description:"Véhicule >= 4ans", numero: 2)
g3 = CheckupItem.create!(name:"Echappement", description:"Véhicule >= 6ans", numero: 3)
g4 = CheckupItem.create!(name:"Echappement", description:"Véhicule >= 8ans", numero: 4)
g5 = CheckupItem.create!(name:"Echappement", description:"Autre", numero: 5)

h1 = CheckupItem.create!(name:"Amortisseurs", description:"Véhicule >= 1an", numero: 1)
h2 = CheckupItem.create!(name:"Amortisseurs", description:"Véhicule >= 2ans", numero: 2)
h3 = CheckupItem.create!(name:"Amortisseurs", description:"Véhicule >= 3ans", numero: 3)
h4 = CheckupItem.create!(name:"Amortisseurs", description:"Véhicule >= 4ans", numero: 4)
h5 = CheckupItem.create!(name:"Amortisseurs", description:"Véhicule >= 5ans", numero: 5)
h6 = CheckupItem.create!(name:"Amortisseurs", description:"Véhicule >= 6ans", numero: 6)
h7 = CheckupItem.create!(name:"Amortisseurs", description:"Autre", numero: 7)

i1 = CheckupItem.create!(name:"Bougies", description:"Bougies 60 000km", numero: 1)
i2 = CheckupItem.create!(name:"Bougies", description:"Bougies 120 000km", numero: 2)
i3 = CheckupItem.create!(name:"Bougies", description:"Bougies 180 000km", numero: 3)
i4 = CheckupItem.create!(name:"Bougies", description:"Autre", numero: 4)


j1 = CheckupItem.create!(name:"Climatisation", description:"Véhicule >= 1an", numero: 1)
j2 = CheckupItem.create!(name:"Climatisation", description:"Véhicule >= 2ans", numero: 2)
j3 = CheckupItem.create!(name:"Climatisation", description:"Véhicule >= 3ans", numero: 3)
j4 = CheckupItem.create!(name:"Climatisation", description:"Véhicule >= 4ans", numero: 4)
j5 = CheckupItem.create!(name:"Climatisation", description:"Véhicule >= 5ans", numero: 5)
j6 = CheckupItem.create!(name:"Climatisation", description:"Véhicule >= 6ans", numero: 6)
j7 = CheckupItem.create!(name:"Climatisation", description:"Autre", numero: 7)

k1 = CheckupItem.create!(name:"Controle Technique", description:"1er Controle Technique", numero: 1)
k2 = CheckupItem.create!(name:"Controle Technique", description:"2ème Controle Technique", numero: 2)
k3 = CheckupItem.create!(name:"Controle Technique", description:"3ème Controle Technique", numero: 3)
k4 = CheckupItem.create!(name:"Controle Technique", description:"Autre", numero: 4)

l1 = CheckupItem.create!(name:"Vidange", description:"Véhicule >= 1an", numero: 1)
l2 = CheckupItem.create!(name:"Vidange", description:"Véhicule >= 2ans", numero: 2)
l3 = CheckupItem.create!(name:"Vidange", description:"Véhicule >= 3ans", numero: 3)
l4 = CheckupItem.create!(name:"Vidange", description:"Véhicule >= 4ans", numero: 4)
l5 = CheckupItem.create!(name:"Vidange", description:"Véhicule >= 5ans", numero: 5)
l6 = CheckupItem.create!(name:"Vidange", description:"Véhicule >= 6ans", numero: 6)
l7 = CheckupItem.create!(name:"Vidange", description:"Autre", numero: 7)


ccc = Checkup.create!(book:b1, checkup_item:c1, km_ondate:"30000")

ccd = Checkup.create!(book:b2, checkup_item:c2, km_ondate:"30000")


